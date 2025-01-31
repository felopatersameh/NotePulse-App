import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../Core/Network/Local/cash_helper.dart';
import '../../../../Core/Network/Local/local_string.dart';
import '../../../../Core/Resources/icon.dart';
import '../../data/models/notes_model.dart';
import '../../domain/use_cases/main_use_case.dart';
import '../widgets/MainScreens/done_screen.dart';
import '../widgets/MainScreens/favorite_screen.dart';
import '../widgets/MainScreens/notes_screen.dart';
import 'main_states.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit(this.getNotesUseCase, this.insertNoteUseCase,
      this.removeNoteUseCase, this.updateNoteUseCase)
      : super(InitialStates());

  static MainCubit get(context) => BlocProvider.of(context);

  final GetNotesUseCase getNotesUseCase;
  final InsertNoteUseCase insertNoteUseCase;
  final RemoveNoteUseCase removeNoteUseCase;
  final UpdateNoteUseCase updateNoteUseCase;

  //////////////////////////////////////////////////////////
  int numberScreen = 0;
  List<Widget> screens = [
    const NotesScreen(),
    const FavoriteScreen(),
    const DoneScreen()
  ];
  List<String> nameScreens = ['Notes', 'Favourite', 'Passed Notes'];

//------------------------------------------------------------------------------------------------------------------------
  void changeScreen(int num) {
    numberScreen = num;
    emit(ChangeScreen());
  }

  //////////////////////////////////////////////////////////
  bool sheet = true;
  IconData iconFloating = AppIcons.iconFloatPart1;

  void changeBottomSheet({required bool show, required IconData iconData}) {
    sheet = show;
    iconFloating = iconData;
    emit(ChangeBottomSheet());
  }

  //////////////////////////////////////////////////////////
  bool dark = false;

  Future<void> changeThemes(bool value) async {
    dark = value;
    await CashHelper.saveData(key: LocalString.modeDark, value: value);
    emit(ChangeThemes());
  }

//---------------------------------------------SQL Process
  Future<void> fetchNotes() async {
    emit(LoadingGetData());
    final result = await getNotesUseCase.execute();
    result.fold(
      (failure) => emit(ErrorGetData(text: failure)),
      (notes) {
        final List<NotesModel> favourite = [];
        final List<NotesModel> passed = [];
        for (final note in notes) {
          if (note.favorite == "yes") {
            favourite.add(note);
          }
          if (isDateTimePassed(note.date, note.time)) {
            passed.add(note);
          }
        }

        emit(SuccessesGetDatabase(notes, favourite, passed));
      },
    );
  }

//////////////////////////////////////////////////////////
  Future<void> addNote(NotesModel note) async {
    emit(NotesLoading());
    if (isDateTimePassed(note.date, note.time)) {
      emit(NotesError('The time is Already Passed '));
    } else {
      final result = await insertNoteUseCase.execute(note);
      result.fold(
        (failure) => emit(NotesError(failure)),
        (_) => fetchNotes(),
      );
    }
  }

//////////////////////////////////////////////////////////
  Future<void> deleteNote(String id) async {
    emit(NotesLoading());
    final result = await removeNoteUseCase.execute(id);
    result.fold(
      (failure) => emit(NotesError(failure)),
      (_) => fetchNotes(),
    );
  }

//////////////////////////////////////////////////////////
  Future<void> updateNote(NotesModel note) async {
    emit(NotesLoading());
    final result = await updateNoteUseCase.execute(note);
    result.fold(
      (failure) => emit(NotesError(failure)),
      (_) => fetchNotes(),
    );
  }

  //////////////////////////////////////////////////////////

  bool isDateTimePassed(String databaseDateString, String dataBasTimeString) {
    DateFormat dateFormat = DateFormat('yyyy-MM-dd');
    DateFormat timeFormat = DateFormat('hh:mm a');
    DateTime dateTime = dateFormat.parse(databaseDateString);
    DateTime time = timeFormat.parse(dataBasTimeString);
    bool hasPassedDate = dateTime.isBefore(DateTime.now());
    bool hasPassedTime = time.isBefore(DateTime.now());
    if (hasPassedDate && hasPassedTime) {
      return true;
    }
    return false;
  }
}
