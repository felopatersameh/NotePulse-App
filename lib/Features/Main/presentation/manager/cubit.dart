import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'states.dart';
import 'package:sqflite/sqflite.dart';
import '../../../../Core/Resources/icon.dart';
import 'package:note_pulse/Core/Resources/string.dart';
import '../../data/models/notes_model.dart';
import 'package:note_pulse/Core/SqlLite/database_process.dart';

import '../../../../Core/SqlLite/strings_sql.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(InitialStates());

  static AppCubit get(context) => BlocProvider.of(context);
  // final DatabaseHelper dbHelper = DatabaseHelper();
  // Database? database; // for Create Database
  List<NotesModel> dataNotes = [];
  List<NotesModel> dataFavorites = [];
  List<NotesModel> dataDone = [];
  List<NotesModel> dataPerson = [];
  bool sheet = true;
  bool dark = false;
  IconData iconFloating = AppIcons.iconAddNote;
  Map<String, bool> favorites = {};

//------------------------------------------------------------------------------------------------------------------------

  void changeBottomSheet({required bool show, required IconData iconData}) {
    sheet = show;
    iconFloating = iconData;
    emit(ChangeBottomSheet());
  }

//------------------------------------------------------------------------------------------------------------------------

  Future<void> sqliteGetOrCreated() async {
    // emit(LoadingGetData());
    // dbHelper.queryAllItems().then((onValue) {
    //   dataNotes = [];
    //   dataFavorites = [];
    //   dataDone = [];
    //   for (final note in onValue) {
    //     dataNotes.add(NotesModel.fromjson(note));
    //     favorites.addAll({
    //       note[AppDatabase.rawId]:
    //           note[AppDatabase.rawFavorite] == 'yes' ? true : false
    //     });
    //     if (note[AppDatabase.rawFavorite] == 'yes') {
    //       dataFavorites.add(NotesModel.fromjson(note));
    //     }
    //     if (isDateTimePassed(
    //         note[AppDatabase.rawDate], note[AppDatabase.rawTime])) {
    //       dataDone.add(NotesModel.fromjson(note));
    //     }
    //   }
    //
    //   emit(SuccessesGetDatabase());
    // }).catchError((onError) {
    //   emit(ErrorOnGetData(text: onError));
    // });
  }

//------------------------------------------------------------------------------------------------------------------------

  Future<void> insertDatabase({
    required String time,
    required String date,
    required String name,
    required String post,
  }) async {
    // emit(LoadingInsertNewData());
    // final DateTime now = DateTime.now();
    // final String selectedColor = dbHelper.generateRandomColor();
    // final String id = dbHelper.generateRandomId();
    // await dbHelper
    //     .insertItem(
    //         '${AppDatabaseHelper.insertNotesTable}  VALUES( "$id" ,"$time", "$date", "$name", "$post", "$selectedColor","No","No","$now" )')
    //     .then((onValue) {
    //   emit(SuccessesInsertNewData());
    //   sqliteGetOrCreated();
    // }).catchError((onError) {
    //   emit(ErrorInsertNewData(error: onError));
    // });
  }

//------------------------------------------------------------------------------------------------------------------------
  bool isDateTimePassed(String databaseDateString, String dataBasTimeString) {
    // DateTime databaseDate = DateTime.parse(databaseDateString);
    // final bool check;
    //
    // dataBasTimeString.contains('PM') ? check = true : check = false;
    //
    // String time = check
    //     ? dataBasTimeString.replaceAll("PM", '')
    //     : dataBasTimeString.replaceAll("AM", '');
    //
    // int hours = check
    //     ? int.parse(time.split(':')[0]) + 12
    //     : int.parse(time.split(':')[0]);
    // int minutes = int.parse(time.split(':')[1]);
    //
    // DateTime databaseDateTime = DateTime(
    //   databaseDate.year,
    //   databaseDate.month,
    //   databaseDate.day,
    //   hours,
    //   minutes,
    // );
    //
    // DateTime now = DateTime.now();
    //
    // if (databaseDateTime.isBefore(now)) {
    //   return true; // The date and time have passed
    // } else {
      return false; // The date and time have not passed
    // }
  }

//------------------------------------------------------------------------------------------------------------------------
  //^ Need updated

  void removeDatabase({
    required String id,
    required int index,
  }) {
    // emit(LoadingRemovingRaw());
    // dbHelper.deleteItem(AppDatabase.removeNotesTable, id).then((value) {
    //   emit(SuccessRemovingRaw());
    //
    //   sqliteGetOrCreated();
    // }).catchError((onError) {
    //   emit(ErrorRemovingRaw(error: onError));
    // });
  }
  // void _removeItem(int index) {
  //   if (index >= 0 && index < myList.length) {
  //     myList.removeAt(index);
  //   }
  // }
//------------------------------------------------------------------------------------------------------------------------
  //^ Need updated

  Future<void> updateFavoriteNotesDatabase(
    context, {
    required String id,
    required String value,
  }) async {
    // emit(LoadingAddedOnFavorite());
    // favorites[id] == !favorites[id]!;
    // dbHelper.updateItem(AppDatabase.updateFavoriteNotesTable, [value, id]).then(
    //     (onValue) {
    //   emit(SuccessAddedOnFavorite());
    //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //     content: const Text('Add ${AppStrings.favoritePage}'),
    //     action: SnackBarAction(
    //       label: 'Undo',
    //       onPressed: () {
    //         dbHelper.updateItem(AppDatabase.updateFavoriteNotesTable,
    //             [value == "yes" ? 'no' : 'yes', id]).then((value) {
    //           emit(SuccessRemovedOnFavorite());
    //         });
    //       },
    //     ),
    //   ));
    //   sqliteGetOrCreated();
    // }).catchError((onError) {
    //   favorites[id] = !favorites[id]!;
    //   emit(ErrorAddedOnFavorite(error: onError));
    // });
    // // getData(database);
    // // value == "yes" ? isFavorite = true : isFavorite = false;
  }

//------------------------------------------------------------------------------------------------------------------------
  //^ Need updated
  void changeThemes(value) {
    dark = value;
    //todo CashHelper
    emit(ChangeThemes());
  }

//------------------------------------------------------------------------------------------------------------------------
} //! end
