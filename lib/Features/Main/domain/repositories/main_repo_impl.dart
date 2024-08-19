import 'package:dartz/dartz.dart';import 'package:note_pulse/Core/SqlLite/strings_sql.dart';import 'package:note_pulse/Features/Main/data/models/notes_model.dart';import 'package:note_pulse/Features/Main/data/repositories/main_repo.dart';import '../../../../Core/SqlLite/database_process.dart';class MainRepoImpl implements MainRepo {  final DatabaseHelper dbHelper;  MainRepoImpl(this.dbHelper);  @override  Future<Either<String, List<NotesModel>>> getData() async {    try {      final data = await dbHelper.queryAll();      print(' Data : $data');      final List<NotesModel> listItem = [];      for (final item in data) {        listItem.add(NotesModel.fromjson(item));        print('List Data : ${listItem[0]}');      }      return Right(listItem);    } catch (e) {      return Left(e.toString());    }  }  @override  Future<Either<String, NotesModel>> insertData(NotesModel note) async {    try {      await dbHelper.insert(AppDatabaseHelper.tableOfNotes, note.toMap());      return Right(note);    } catch (e) {      return Left(e.toString());    }  }  @override  Future<Either<String, bool>> removeData(String id) async {    try {      final rowsAffected = await dbHelper.delete('notes', 'rawId = ?', [id]);      return Right(rowsAffected > 0);    } catch (e) {      return Left(e.toString());    }  }  @override  Future<Either<String, bool>> updateData(NotesModel note) async {    try {      // final rowsAffected = await dbHelper      //     .update('notes', note.toMap(), 'rawId = ?', [note.rawId]);      return Right(true);    } catch (e) {      return Left(e.toString());    }  }}