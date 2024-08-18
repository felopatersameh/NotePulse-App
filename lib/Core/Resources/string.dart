class AppStrings {
  //*************************************************** validate
  static const String time = 'Time';
  static const String date = 'Time';
  static const String title = 'Title';
  static const String description = 'Description';
  static const String timeValidate = 'Enter $time';
  static const String dateValidate = 'Enter $date';
  static const String titleValidate = 'Enter $title';
  static const String descriptionValidate = 'Enter $description ';

  //*************************************************** IN Home Layout
  static const String favoritePage = 'Favorite';
  static const String donePage = 'Done';
  static const String settingPage = 'Setting';
  static const String aboutPage = 'About';
  static const String notePage = 'Notes';

  //*************************************************** IN Massages
  static const String success = "Success";
  static const String failed = "Failed";
}

class AppDatabase {
  static const String nameDatabase = "App.db";
  static const String visionDatabase = "App.db";

  // ** table_1
  static const String tableOfNotes = 'Notes';
  static const String rawId = 'Id';
  static const String rawTime = 'Time';
  static const String rawDate = 'Date';
  static const String rawTitle = 'Title';
  static const String rawField = 'Field';
  static const String rawColor = 'Color';
  static const String rawFavorite = 'Favorite';
  static const String rawDone = 'Done';
  static const String rawCreateIN = 'CreateIN';
  static const String createNotesTable =
      "CREATE TABLE $tableOfNotes ($rawId text ,$rawTime text  , $rawDate text  ,$rawTitle text  , $rawField text  , $rawColor text , $rawFavorite text , $rawDone text,$rawCreateIN text) ";
  static const String insertNotesTable =
      "INSERT INTO $tableOfNotes ( $rawId , $rawTime, $rawDate,$rawTitle,$rawField,$rawColor,$rawFavorite,$rawDone,$rawCreateIN)";
  static const String selectNotesTable = "SELECT * FROM $tableOfNotes";
  static const String updateFavoriteNotesTable =
      "UPDATE  $tableOfNotes SET $rawFavorite = ? WHERE $rawId = ?";
  static const String removeNotesTable =
      'DELETE FROM $tableOfNotes WHERE $rawId = ?';
}
