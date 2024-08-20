import 'package:note_pulse/Features/Main/data/models/notes_model.dart';

abstract class MainState {}

class InitialStates extends MainState {}

class ChangeNavBottom extends MainState {}

class Themes extends MainState {}

class ShowSheet extends MainState {}

class LoadingGetData extends MainState {}

class SuccessesGetDatabase extends MainState {
  final List<NotesModel> notes;
  final List<NotesModel> favourite;
  final List<NotesModel> passed;

  SuccessesGetDatabase(this.notes, this.favourite, this.passed);
}

class ErrorGetData extends MainState {
  final String text;

  ErrorGetData({required this.text});
}
//-----------------------------------------

class LoadingInsertNewData extends MainState {}

class SuccessesInsertNewData extends MainState {}

class ErrorInsertNewData extends MainState {
  final String error;

  ErrorInsertNewData({required this.error});
}
//-----------------------------------------

class LoadingAddedOnFavorite extends MainState {}

class SuccessAddedOnFavorite extends MainState {}

class SuccessRemovedOnFavorite extends MainState {}

class ErrorAddedOnFavorite extends MainState {
  final String error;

  ErrorAddedOnFavorite({required this.error});
}
//-----------------------------------------

class LoadingRemovingRaw extends MainState {}

class SuccessRemovingRaw extends MainState {}

class ErrorRemovingRaw extends MainState {
  final String error;

  ErrorRemovingRaw({required this.error});
}
//-----------------------------------------

class DeletDatabase extends MainState {}

class ChangeScreen extends MainState {}

class ChangeBottomSheet extends MainState {}

class ChangeThemes extends MainState {}

class NotesInitial extends MainState {}

class NotesLoading extends MainState {}

class NotesLoaded extends MainState {
  final List<NotesModel> notes;

  NotesLoaded(this.notes);
}

class NotesInserted extends MainState {}

class NotesError extends MainState {
  final String message;

  NotesError(this.message);
}
