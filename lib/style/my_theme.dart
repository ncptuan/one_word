import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

/// theme for tablet mode

class MyTheme {
  static const String fontFamily = 'Roboto';

  static const bool _isLightMode = true;

  static bool get isLightMode => _isLightMode;

  static ThemeData darkTheme() {
    return ThemeData(
      primaryColor: MyColors.primaryColor,
      dividerColor: MyColors.greyColor,
      cardColor: MyColors.sellColor,
      buttonTheme: const ButtonThemeData(
          colorScheme: ColorScheme(
            secondary: MyColors.accentColor,
            primary: MyColors.orangeButtonColor,
            background: MyColors.darkBackgroundColor,
            brightness: Brightness.light,
            error: MyColors.errorColor,
            onBackground: MyColors.greyColor,
            onError: MyColors.errorColor,
            onPrimary: MyColors.accentColor,
            onSecondary: MyColors.lightColor,
            onSurface: MyColors.whiteColor,
            primaryContainer: MyColors.whiteColor,
            secondaryContainer: MyColors.activeColor,
            surface: MyColors.defaultColor,
          ),
          buttonColor: MyColors.orangeButtonColor),
      // ignore: deprecated_member_use
      primaryColorDark: MyColors.blackColor,
      indicatorColor: MyColors.calendarTabColor,
      iconTheme: const IconThemeData(
        color: MyColors.accentColor,
        size: Dimens.iconSize,
      ),
      primaryTextTheme: const TextTheme(
        displayLarge: TextStyle(
          color: MyColors.whiteColor,
          fontWeight: FontWeight.w700,
          fontSize: Dimens.size36,
          fontFamily: fontFamily,
        ),
        displayMedium: TextStyle(
          color: MyColors.whiteColor,
          fontWeight: FontWeight.w700,
          fontSize: Dimens.size24,
          fontFamily: fontFamily,
        ),
        displaySmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.whiteColor,
          fontSize: Dimens.textSize18,
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.priceColor,
          fontSize: Dimens.textSize14,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.whiteColor,
          fontSize: Dimens.textSize18,
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: TextStyle(
          color: MyColors.tintColor,
          fontSize: Dimens.textSize14,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
        ),
        titleMedium: TextStyle(
          color: MyColors.whiteColor,
          fontSize: Dimens.textSize14,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
        ),
        titleSmall: TextStyle(
          color: MyColors.accentColor,
          fontWeight: FontWeight.w500,
          fontSize: Dimens.textSize14,
          fontFamily: fontFamily,
        ),
        headlineSmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.orangeButtonColor,
          fontSize: Dimens.textSize14,
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.accentColor,
          fontSize: Dimens.textSize14,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.captionColor,
          fontSize: Dimens.textSize11,
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.whiteColor,
          fontSize: Dimens.textSize10,
          fontWeight: FontWeight.w700,
        ),
        labelSmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.whiteColor,
          fontSize: Dimens.textSize13,
          fontWeight: FontWeight.w400,
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.whiteColor,
          fontSize: Dimens.textSize24,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.accentColor,
          fontSize: Dimens.textSize16,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.accentColor,
          fontSize: Dimens.textSize16,
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.whiteColor,
          fontSize: Dimens.size16,
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.accentColor,
          fontSize: Dimens.textSize24,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: MyColors.fieldRequiredRedColor,
          fontSize: Dimens.textSize14,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
        ),
        // here

        titleLarge: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.accentColor,
          fontSize: Dimens.textSize18,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.lightColor,
          fontSize: Dimens.textSize14,
          fontWeight: FontWeight.w600,
        ),
        bodyMedium: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.accentColor,
          fontSize: Dimens.textSize14,
          fontWeight: FontWeight.w600,
        ),
        bodySmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.lightColor,
          fontSize: Dimens.textSize12,
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.primaryColor,
          fontSize: Dimens.textSize14,
          fontWeight: FontWeight.w700,
        ),

        titleSmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.lightColor,
          fontSize: Dimens.textSize16,
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.lightColor,
          fontSize: Dimens.textSize14,
          fontWeight: FontWeight.w400,
        ),
      ),
      colorScheme: const ColorScheme(
        secondary: MyColors.accentColor,
        primary: MyColors.primaryColor,
        background: MyColors.darkBackgroundColor,
        brightness: Brightness.light,
        error: MyColors.errorColor,
        onBackground: MyColors.greyColor,
        onError: MyColors.errorColor,
        onPrimary: MyColors.accentColor,
        onSecondary: MyColors.lightColor,
        onSurface: MyColors.whiteColor,
        primaryContainer: MyColors.whiteColor,
        secondaryContainer: MyColors.activeColor,
        surface: MyColors.defaultColor,
      ),
    );
  }

  static ThemeData lightTheme() {
    return ThemeData(
      colorScheme: const ColorScheme(
        secondary: MyColors.accentColor,
        primary: MyColors.primaryColor,
        brightness: Brightness.light,
        error: MyColors.errorColor,
        // onBackground: MyColors.greyColor,
        onError: MyColors.errorColor,
        onPrimary: MyColors.accentColor,
        onSecondary: MyColors.lightColor,
        onSurface: MyColors.whiteColor,
        primaryContainer: MyColors.whiteColor,
        secondaryContainer: MyColors.activeColor,
        surface: MyColors.lightSurfaceColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: MyColors.blackColor.withOpacity(0.3),
      ),
      primaryColor: MyColors.primaryColor,
      dividerColor: MyColors.greyColor,
      cardColor: MyColors.sellColor,
      buttonTheme: const ButtonThemeData(
          colorScheme: ColorScheme(
            secondary: MyColors.accentColor,
            primary: MyColors.orangeButtonColor,
            // background: MyColors.darkBackgroundColor,
            brightness: Brightness.light,
            error: MyColors.errorColor,
            onBackground: MyColors.greyColor,
            onError: MyColors.errorColor,
            onPrimary: MyColors.accentColor,
            onSecondary: MyColors.lightColor,
            onSurface: MyColors.whiteColor,
            primaryContainer: MyColors.whiteColor,
            secondaryContainer: MyColors.activeColor,
            surface: MyColors.defaultColor,
          ),
          buttonColor: MyColors.orangeButtonColor),
      // ignore: deprecated_member_use
      primaryColorDark: MyColors.blackColor,
      indicatorColor: MyColors.calendarTabColor,
      iconTheme: const IconThemeData(
        color: MyColors.accentColor,
        size: Dimens.iconSize,
      ),
      primaryTextTheme: const TextTheme(
        displayLarge: TextStyle(
          color: MyColors.whiteColor,
          fontWeight: FontWeight.w700,
          fontSize: Dimens.size36,
          fontFamily: fontFamily,
        ),
        displayMedium: TextStyle(
          color: MyColors.whiteColor,
          fontWeight: FontWeight.w700,
          fontSize: Dimens.size24,
          fontFamily: fontFamily,
        ),
        displaySmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.whiteColor,
          fontSize: Dimens.textSize18,
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: MyColors.accentColor,
          fontWeight: FontWeight.w700,
          fontSize: Dimens.size24,
          fontFamily: fontFamily,
        ),
        // headlineMedium: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.priceColor,
        //   fontSize: Dimens.textSize14,
        //   fontWeight: FontWeight.w700,
        // ),
        bodyLarge: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.accentColor,
          fontSize: Dimens.textSize14,
          fontWeight: FontWeight.w700,
        ),
        // bodyMedium: TextStyle(
        //   color: MyColors.tintColor,
        //   fontSize: Dimens.textSize14,
        //   fontWeight: FontWeight.w400,
        //   fontFamily: fontFamily,
        // ),
        // titleMedium: TextStyle(
        //   color: MyColors.whiteColor,
        //   fontSize: Dimens.textSize14,
        //   fontWeight: FontWeight.w400,
        //   fontFamily: fontFamily,
        // ),
        // titleSmall: TextStyle(
        //   color: MyColors.accentColor,
        //   fontWeight: FontWeight.w500,
        //   fontSize: Dimens.textSize14,
        //   fontFamily: fontFamily,
        // ),
        // headlineSmall: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.orangeButtonColor,
        //   fontSize: Dimens.textSize14,
        //   fontWeight: FontWeight.w700,
        // ),
        // titleLarge: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.accentColor,
        //   fontSize: Dimens.textSize14,
        //   fontWeight: FontWeight.w400,
        // ),
        // bodySmall: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.captionColor,
        //   fontSize: Dimens.textSize11,
        //   fontWeight: FontWeight.w400,
        // ),
        // labelLarge: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.whiteColor,
        //   fontSize: Dimens.textSize10,
        //   fontWeight: FontWeight.w700,
        // ),
        // labelSmall: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.whiteColor,
        //   fontSize: Dimens.textSize13,
        //   fontWeight: FontWeight.w400,
        // ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.priceColor,
          fontSize: Dimens.textSize24,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.accentColor,
          fontSize: Dimens.textSize16,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          fontFamily: fontFamily,
          color: MyColors.accentColor,
          fontSize: Dimens.textSize16,
          fontWeight: FontWeight.w400,
        ),
        // headlineMedium: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.whiteColor,
        //   fontSize: Dimens.size16,
        //   fontWeight: FontWeight.w400,
        // ),
        // headlineSmall: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.accentColor,
        //   fontSize: Dimens.textSize24,
        //   fontWeight: FontWeight.w700,
        // ),
        // titleMedium: TextStyle(
        //   color: MyColors.fieldRequiredRedColor,
        //   fontSize: Dimens.textSize14,
        //   fontWeight: FontWeight.w400,
        //   fontFamily: fontFamily,
        // ),
        // // here

        // titleLarge: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.accentColor,
        //   fontSize: Dimens.textSize18,
        //   fontWeight: FontWeight.w600,
        // ),
        // bodyLarge: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.lightColor,
        //   fontSize: Dimens.textSize14,
        //   fontWeight: FontWeight.w600,
        // ),
        // bodyMedium: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.accentColor,
        //   fontSize: Dimens.textSize14,
        //   fontWeight: FontWeight.w600,
        // ),
        // bodySmall: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.lightColor,
        //   fontSize: Dimens.textSize12,
        //   fontWeight: FontWeight.w500,
        // ),
        // labelLarge: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.primaryColor,
        //   fontSize: Dimens.textSize14,
        //   fontWeight: FontWeight.w700,
        // ),

        // titleSmall: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.lightColor,
        //   fontSize: Dimens.textSize16,
        //   fontWeight: FontWeight.w600,
        // ),
        // labelSmall: TextStyle(
        //   fontFamily: fontFamily,
        //   color: MyColors.lightColor,
        //   fontSize: Dimens.textSize14,
        //   fontWeight: FontWeight.w400,
        // ),
      ),
    );
  }
}
