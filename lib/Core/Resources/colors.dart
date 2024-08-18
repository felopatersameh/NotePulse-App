
import 'package:flutter/material.dart';

// Color ch (context)
// {
//   if(AppCubit.get(context).dark)
//     {
//       return Colors.black ;
//     }
//   else {
//     return Colors.white ;
//   }
// }

class AppColors {
  // basic color && color app
  static const Color colorBackground = Colors.white  ;
  static const Color colorBackground2 = Color.fromRGBO(38, 50, 56, 1.0);
  static const Color colorPrimary = Color.fromRGBO(254, 211, 106, 1);

  // static const Color colorSecondary  =Color.fromRGBO;
  // selected && unselected
  static const Color colorFixed = Colors.black;
  static const Color colorSelected = colorPrimary;

  // color for text
  static const Color colorTitleText1 = Color.fromRGBO(0, 0, 0, 1.0);
  static const Color colorTitleText2 = Color.fromRGBO(45, 35, 35, 1.0);
  static const Color colorTitleText3 = Colors.black38 ;

  // for icons
  static const Color colorIcons = Colors.white;
  static const Color colorIcons2 = Colors.black;

  // for text field
  static const Color colorTextFieldBackGround = Color.fromRGBO(69, 90, 100, 1);

  // for navigation
  static const Color colorBackgroundNavigation = Color.fromRGBO(33, 40, 50, 1);

  static const Color colorBackgroundAddTaskBottom =
      Color.fromRGBO(254, 211, 106, 1);
}
class AppColorsDark {
  // basic color && color app
  static const Color colorBackground = Colors.black  ;
  static const Color colorBackground2 = Color.fromRGBO(
      17, 12, 12, 0.9607843137254902);
  static const Color colorPrimary = Color.fromRGBO(254, 211, 106, 1);

  // static const Color colorSecondary  =Color.fromRGBO;
  // selected && unselected
  static const Color colorFixed = Colors.black;
  static const Color colorSelected = colorPrimary;

  // color for text in Notes
  static const Color colorTitleText1 = Color.fromRGBO(255, 255, 255, 1);
  static const Color colorTitleText2 = Color.fromRGBO(201, 219, 232, 1.0);
  static const Color colorTitleText3 = Colors.black38 ;

  // for icons
  static const Color colorIcons = Colors.white;
  static const Color colorIcons2 = Colors.black;

  // for text field
  static const Color colorTextFieldBackGround = Color.fromRGBO(69, 90, 100, 1);

  // for navigation
  static const Color colorBackgroundNavigation = Color.fromRGBO(33, 40, 50, 1);

  static const Color colorBackgroundAddTaskBottom =
      Color.fromRGBO(254, 211, 106, 1);
}
