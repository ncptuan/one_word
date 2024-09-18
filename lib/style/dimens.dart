import 'package:flutter/material.dart';

import 'style.dart';

class Dimens {
  Dimens._();
  static const double negativeSize30 = -30.0;
  static const double size0 = 0.0;
  static const double size1 = 1.0;
  static const double size2 = 2.0;
  static const double size3 = 3.0;
  static const double size4 = 4.0;
  static const double size5 = 5.0;
  static const double size6 = 6.0;
  static const double size8 = 8.0;
  static const double size10 = 10.0;
  static const double size11 = 11.0;
  static const double size12 = 12.0;
  static const double size13 = 13.0;
  static const double size14 = 14.0;
  static const double size16 = 16.0;
  static const double size17 = 17.0;
  static const double size18 = 18.0;
  static const double size20 = 20.0;
  static const double size22 = 22.0;
  static const double size24 = 24.0;
  static const double size25 = 25.0;
  static const double size26 = 26.0;
  static const double size28 = 28.0;
  static const double size30 = 30.0;
  static const double size32 = 32.0;
  static const double size33 = 33.0;
  static const double size34 = 34.0;
  static const double size36 = 36.0;
  static const double size40 = 40.0;
  static const double size42 = 42.0;
  static const double size43 = 43.0;
  static const double size44 = 44.0;
  static const double size46 = 46.0;
  static const double size48 = 48.0;
  static const double size50 = 50.0;
  static const double size52 = 52.0;
  static const double size54 = 54.0;
  static const double size56 = 56.0;
  static const double size59 = 59.0;
  static const double size60 = 60.0;
  static const double size62 = 62.0;
  static const double size64 = 64.0;
  static const double size72 = 72.0;
  static const double size76 = 76.0;
  static const double size80 = 80.0;
  static const double size90 = 90.0;
  static const double size92 = 92.0;
  static const double size96 = 96.0;
  static const double size100 = 100.0;
  static const double size110 = 110.0;
  static const double size120 = 120.0;
  static const double size130 = 130.0;
  static const double size135 = 135.0;
  static const double size140 = 140.0;
  static const double size150 = 150.0;
  static const double size156 = 156.0;
  static const double size160 = 160.0;
  static const double size164 = 164.0;
  static const double size165 = 165.0;
  static const double size168 = 168.0;
  static const double size170 = 170.0;
  static const double size172 = 172.0;
  static const double size180 = 180.0;
  static const double size185 = 185.0;
  static const double size190 = 190.0;
  static const double size200 = 200.0;
  static const double size204 = 204.0;
  static const double size210 = 210.0;
  static const double size215 = 215.0;
  static const double size220 = 220.0;
  static const double size230 = 230.0;
  static const double size240 = 240.0;
  static const double size244 = 244.0;
  static const double size256 = 256.0;
  static const double size260 = 260.0;
  static const double size288 = 288.0;
  static const double size300 = 300.0;
  static const double size336 = 336.0;
  static const double size344 = 344.0;
  static const double size360 = 360.0;
  static const double size387 = 387.0;
  static const double size400 = 400.0;
  static const double size442 = 442.0;
  static const double size470 = 470.0;
  static const double size530 = 530.0;
  static const double size1_5 = 1.5;

  static const double navigationMaxWidth = 280;
  static const double navigationMinWidth = 100;

  static const double widthOfPickImage = 0.65116279069;
  static const double heightOfPickImage = 0.30042918454;
  static const double widthOfCartItem = 0.88630490956;

  ///
  static const double thickness = 1.0;
  static const double borderWidth = 2.0;
  static const double mainImageBorder = 40.0;
  static const double strokeWidth = 2.5;
  static const double controlHeight = 44.0;
  static const double controlWidth = 180.0;
  static const double iconSize = 24.0;
  static const double iconMediumSize = 36.0;
  static const double titlePopSize = 18.0;
  static const double iconSizeInside = 20.0;
  static const double spacing = 12.0;
  static const double defaultSpacing = 16.0;
  static const double largeSpacing = 24.0;
  static const int breakpoint = 1920;
  static const double defaultBorderRadius = 10;
  static const double cardBorderRadius = 24.0;
  static const double verticalSpacingBetween = 20.0;
  static const double horizontalSpacingBetween = 90.0;
  static const double bottomMobileInset = 24;
  static const paddingAll = EdgeInsets.all(spacing);
  static const paddingVertical = EdgeInsets.symmetric(vertical: spacing);
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: spacing);
  static const paddingBottom = EdgeInsets.only(bottom: 0.0);
  static const buttonPadding = EdgeInsets.symmetric(vertical: 12.0);
  static const buttonPaddingPhone =
      EdgeInsets.symmetric(horizontal: 5.0, vertical: 12.0);

  /// tablet stepper padding
  static const mainPagePadding =
      EdgeInsets.symmetric(horizontal: 71.0, vertical: 20.0);
  static const mainTopPagePadding =
      EdgeInsets.only(left: 71.0, right: 71.0, top: 34);

  /// phone stepper padding
  static const mainPagePhonePadding =
      EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0);
  static const mainTopPagePhonePadding =
      EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0);

  static const lineWeight = 2.0;
  static const cardShadow = BoxShadow(
      color: Color.fromARGB(255, 88, 88, 88),
      offset: Offset(0, 0),
      blurRadius: 8.0);
  static const cardShadowDark = BoxShadow(
      color: MyColors.shadowColor, offset: Offset(0, 4), blurRadius: 15.0);
  static const cardShadowGrey = BoxShadow(
      color: MyColors.greyColor,
      offset: Offset(0, 4),
      spreadRadius: 4,
      blurRadius: 30.0);

  static const staffCardShadow = BoxShadow(
      color: MyColors.greyColor, offset: Offset(0, 15), blurRadius: 24);
  static const lightWeightCardShadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.05), //INFO: Cannot get from MyColor.
    spreadRadius: 0,
    blurRadius: 10,
    offset: Offset(0, 4),
  );

  static const buttonDarkShadowTop = BoxShadow(
    color: Color.fromRGBO(50, 50, 93, 0.25),
    spreadRadius: -5,
    blurRadius: 27,
    offset: Offset(0, 13),
  );

  static const buttonDarkShadowBot = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.3),
    spreadRadius: -8,
    blurRadius: 16,
    offset: Offset(0, 8),
  );

  static const double heightCardSizeS = 110.0;
  static const double heightCardSizeM = 170.0;
  static const double heightCardSizeL = 220.0;
  static const double heightCardSizeXL = 390.0;
  static const double heightCardCategorySizeL = 250.0;
  static const double heightSearchStep = 48.0;
  static const double heightCardServiceStep = 410.0;
  static const double heightListServiceStep = 450.0;
  static const double heightImageServiceStep = 224.0;
  static const double heightNumberServiceStep = 32.0;
  static const double heightCardCoinPackSizeM = 210.0;
  static const double heightImageServiceComplete = 144.0;

  static const double detailPopupWidth = 540;
  static const double smallDetailPopupWidth = 400;

  // Text size;
  static const textSize10 = 10.0;
  static const textSize11 = 11.0;
  static const textSize12 = 12.0;
  static const textSize13 = 13.0;
  static const textSize14 = 14.0;
  static const textSize16 = 16.0;
  static const textSize18 = 18.0;
  static const textSize15 = 15.0;
  static const textSize24 = 24.0;
  static const textSize25 = 25.0;
  static const textSize27 = 27.0;
  static const textSize32 = 32.0;
  static const textSize36 = 36.0;
  static const textSize40 = 40.0;
  static const textSize48 = 48.0;

  // Max line
  static const int maxLine1 = 1;
  static const int maxLine2 = 2;
  static const int maxLine3 = 3;

  // Number
  static const int number4 = 4;
  static const int number6 = 6;

  /// Icon size
  static const double smallIconSize = 16.0;
  static const double normalIconSize = 24.0;
  static const double largeIconSize = 56.0;

  static const double hightButton = 44.0;
  static const double borderButton = 2.0;
  static const double widthButton = 150.0;
  static const double widthSearchStep = 358.0;
  static const double widthCardServiceStep = 336.0;
  static const double widthNumberServiceStep = 100.0;
  static const double widthConfirmDialog = 450.0;
  static const double kDefaultPaddin = 20.0;
}
