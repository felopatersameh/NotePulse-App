import 'package:flutter/material.dart';

class AppIcons {

  static const Icon iconFavorite = iconFavoritePage;

  static const Icon iconStar = Icon(
    Icons.star,
    color: Colors.yellowAccent,
    size: 20,
  );

//-----------------------------------------------------------------------------------NavigateBar
  static const Icon iconFavoritePage = Icon(Icons.favorite, color: Colors.red);

  static const Icon iconDonePage = Icon(Icons.check, color: Colors.green);

  static const Icon iconNotesPage = Icon(Icons.library_books_rounded);
  static const Icon iconSettingPage = Icon(
    Icons.settings,
    color: Colors.grey,
  );
  static const Icon iconAboutPage = Icon(
    Icons.info,
    color: Colors.grey,
  );

//-----------------------------------------------------------------------------------Form AddNotes
  static const IconData iconClock = Icons.timer_rounded;

  static const IconData iconDate = Icons.date_range;

  static const IconData iconTitle = Icons.title;

  static const IconData iconDescription = Icons.description;

  static const IconData iconAddNote = Icons.post_add;
//-----------------------------------------------------------------------------------Form Slideable
  static const IconData iconRemove = Icons.delete;
  static const IconData iconAddFavorite = Icons.favorite;


}
