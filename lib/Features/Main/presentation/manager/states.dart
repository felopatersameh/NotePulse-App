import 'package:note_pulse/Features/Main/data/models/notes_model.dart';

abstract class AppState {}

class InitialStates extends AppState {}

class ChangeNavBottom extends AppState {}

class Themes extends AppState {}

class ShowSheet extends AppState {}

//-----------------------------------------
class LoadingGetData extends AppState {}

class SuccessesGetDatabase extends AppState {}

class ErrorOnGetData extends AppState {
  final String text;

  ErrorOnGetData({required this.text});
}
//-----------------------------------------

class LoadingInsertNewData extends AppState {}

class SuccessesInsertNewData extends AppState {}

class ErrorInsertNewData extends AppState {
  final String error;

  ErrorInsertNewData({required this.error});
}
//-----------------------------------------

class LoadingAddedOnFavorite extends AppState {}

class SuccessAddedOnFavorite extends AppState {}
class SuccessRemovedOnFavorite extends AppState {}

class ErrorAddedOnFavorite extends AppState {
  final String error;

  ErrorAddedOnFavorite({required this.error});
}
//-----------------------------------------

class LoadingRemovingRaw extends AppState {}
class SuccessRemovingRaw extends AppState {}
class ErrorRemovingRaw extends AppState {
  final String error;

  ErrorRemovingRaw({required this.error});
}
//-----------------------------------------

class DeletDatabase extends AppState {}

class ChangeBottomSheet extends AppState {}

class ChangeThemes extends AppState {}

class update1 extends AppState {}

class update2 extends AppState {}

class NotesInitial extends AppState {}

class NotesLoading extends AppState {}

class NotesLoaded extends AppState {
  final List<NotesModel> notes;

  NotesLoaded(this.notes);
}

class NotesInserted extends AppState {}

class NotesError extends AppState {
  final String message;

  NotesError(this.message);
}
