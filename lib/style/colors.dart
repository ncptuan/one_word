import 'package:flutter/material.dart';

class MyColors {
  MyColors._();

  /// Dark
  // app background

  static const primaryColor = Color.fromRGBO(255, 255, 255, 1);
  static const darkBackgroundColor = Color.fromRGBO(8, 8, 18, 1);
  // background: rgba(228, 228, 231, 1);

  /// light
  // app background
  static const lightSurfaceColor = Color.fromRGBO(255, 255, 255, 1);
  static const lightBackgroundColor = Color.fromRGBO(245, 245, 245, 1);

  // -------------------------------

  static const activeColor = Color.fromRGBO(0, 230, 118, 1);
  static const whiteColor = Color.fromRGBO(255, 255, 255, 1.0);
  static const greyColor = Color.fromRGBO(228, 228, 228, 1);
  static const accentColor = Color.fromRGBO(30, 30, 30, 1.0);
  static const lightColor = Color.fromRGBO(128, 129, 145, 1);
  static const errorColor = Color.fromRGBO(255, 122, 104, 1);
  static const toggleActiveColor = Color.fromRGBO(6, 148, 79, 1);
  static const lightGreenColor = Color.fromRGBO(155, 255, 177, 1);
  static const boldColor = Color.fromRGBO(17, 20, 45, 1);
  static const fieldRequiredRedColor = Color.fromRGBO(255, 65, 118, 1);
  static const systemTagColor = Color.fromRGBO(98, 126, 234, 1);
  static const manualTagColor = Color.fromRGBO(255, 159, 56, 1);
  static const sellColor = Color.fromRGBO(255, 122, 104, 1);
  static const shadowColor = Color.fromRGBO(227, 230, 226, 1.0);
  static const blackColor = Color.fromRGBO(0, 0, 0, 1);
  static const greyLowColor = Color.fromRGBO(17, 12, 46, 0.14901960784313725);
  static const starColor = Color.fromRGBO(255, 213, 53, 1);
  static const greyWhiteColor = Color.fromRGBO(249, 249, 249, 1.0);
  static const calendarTabColor = Color.fromRGBO(255, 222, 186, 1);
  static const meetingScheduleColor1 = Color.fromRGBO(126, 150, 252, 1);
  static const meetingScheduleColor2 = Color.fromRGBO(71, 207, 142, 1);
  static const blackColorTransperentDialog = Color.fromRGBO(0, 0, 0, 0.5);
  static const secondaryAccent = Color.fromRGBO(63, 140, 255, 1);
  static const colorWarning = Color.fromRGBO(255, 148, 5, 1);
  static const orangeButtonColor = Color.fromRGBO(207, 165, 79, 1);
  static const tintColor = Color.fromRGBO(102, 201, 255, 1);
  static const priceColor = Color.fromRGBO(255, 50, 50, 1);
  static const captionColor = Color.fromRGBO(161, 161, 170, 1);
  static const chatBubbleColor = Color.fromARGB(255, 37, 155, 98);
  static const orangeComponentColor = Color.fromRGBO(207, 165, 79, 1);
  static const dartGrayColor = Color.fromRGBO(61, 61, 61, 1);
  static const firstPriceTitle = Color.fromRGBO(252, 215, 112, 1);
  static const lastPriceTitle = Color.fromRGBO(255, 130, 110, 1);
  static const redColor = Color.fromRGBO(211, 57, 57, 1);
  static const contentCardColor = Color.fromRGBO(29, 29, 29, 0.6);

  ///Fixme: color default to fix bug init theme
  static const defaultColor = Color.fromRGBO(0, 0, 0, 1);
  static const Color materialOrange = Color.fromRGBO(255, 171, 64, 1);
  static const Color materialPink = Color.fromRGBO(255, 64, 129, 1);
  static List<List<Color>> dotLoadingColor = [
    [materialOrange, materialOrange],
    [materialOrange, materialPink],
    [materialOrange, materialPink],
    [materialOrange, materialPink],
    [materialOrange, materialPink],
    [materialPink, materialPink]
  ];
}
