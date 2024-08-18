import 'package:flutter/material.dart';
import 'package:note_pulse/Core/Resources/styles.dart';

import 'colors.dart';

ThemeData themeLight(context) => ThemeData(
      scaffoldBackgroundColor: AppColors.colorBackground,
      appBarTheme: AppBarTheme(
        titleTextStyle: getTextLabelLarge(AppColors.colorTitleText1),
        toolbarHeight: 50,
        backgroundColor: AppColors.colorBackground,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.colorIcons2),
      ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.colorBackground,
      elevation: 50,
    ),
    textTheme: TextTheme(
        bodyLarge: getTextLarge(AppColors.colorTitleText1),
        bodyMedium: getTextMedium(AppColors.colorTitleText2),
        bodySmall: getTextSmall(AppColors.colorTitleText3))

    );

ThemeData themeDark(context) => ThemeData(
    scaffoldBackgroundColor: AppColorsDark.colorBackground,
    appBarTheme: const AppBarTheme(
      titleTextStyle:
          TextStyle(color: AppColorsDark.colorTitleText1, fontSize: 25),
      toolbarHeight: 50,
      backgroundColor: AppColorsDark.colorBackground,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColorsDark.colorIcons),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColorsDark.colorBackground2,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColorsDark.colorBackground,
      elevation: 50,
    ),
    textTheme: TextTheme(
        bodyLarge: getTextLarge(AppColorsDark.colorTitleText1),
        bodyMedium: getTextMedium(AppColorsDark.colorTitleText2),
        bodySmall: getTextSmall(AppColorsDark.colorTitleText3)));
