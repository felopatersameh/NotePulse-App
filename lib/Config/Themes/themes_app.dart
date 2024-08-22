import 'package:flutter/material.dart';
import 'package:note_pulse/Core/Resources/styles.dart';

import '../../Core/Resources/colors.dart';

ThemeData themeLight(context) => ThemeData(
    scaffoldBackgroundColor: AppColors.colorBackground,
    appBarTheme: AppBarTheme(
      titleTextStyle: getTextAppBar(AppColors.colorTitleTextWhite),
      toolbarHeight: 50,
      backgroundColor: AppColors.colorBackgroundAppBar,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.colorIcons),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.colorBackgroundDrawer,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      showDragHandle: true
      ,
      backgroundColor: AppColors.colorBackgroundSheet,
      elevation: 50,
    ),
    textTheme: TextTheme(
        bodyLarge: getTextLarge(AppColors.colorTitleTextWhite),
        bodyMedium: getTextMedium(AppColors.colorTitleText2),
        bodySmall: getTextSmall(AppColors.colorTitleText3)));

ThemeData themeDark(context) => ThemeData(
    scaffoldBackgroundColor: AppColorsDark.colorBackground,
    appBarTheme: AppBarTheme(
      titleTextStyle: getTextAppBar(AppColorsDark.colorTitleTextWhite),
      toolbarHeight: 50,
      backgroundColor: AppColorsDark.colorBackgroundAppBar,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColorsDark.colorIcons),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColorsDark.colorBackgroundSheet,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: AppColorsDark.colorBackgroundSheet,
      elevation: 50,
    ),
    textTheme: TextTheme(
        labelLarge: getTextLabelLarge(AppColorsDark.colorTitleTextWhite),
        bodyLarge: getTextLarge(AppColorsDark.colorTitleTextWhite),
        bodyMedium: getTextMedium(AppColorsDark.colorTitleText2),
        bodySmall: getTextSmall(AppColorsDark.colorTitleText3)));
