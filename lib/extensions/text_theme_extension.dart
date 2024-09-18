import 'package:flutter/material.dart';

import '../style/style.dart';

/// Ex:
/// import '~/text_theme_extension.dart';
///
/// 1. Theme.of(context).textTheme.poLabel;
/// 2. Theme.of(context).primaryTextTheme.poLabel;
/// 3. Theme.of(context).accentTextTheme.poLabel;

extension ThemeExtension on TextTheme {
  TextStyle poLabel({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return TextStyle(
      fontFamily: MyTheme.fontFamily,

      /// FIXME: Change dark color later
      color: isLight ? MyColors.primaryColor : MyColors.primaryColor,
      fontSize: Dimens.textSize12,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle captionLabel({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: isLight ? MyColors.lightColor : MyColors.lightColor,
      fontSize: Dimens.textSize12,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle bordHeadline4Label({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;
    return TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: isLight ? MyColors.accentColor : MyColors.accentColor,
      fontSize: Dimens.size32,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle headlineModal() {
    return const TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: MyColors.accentColor,
      fontSize: Dimens.size24,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle headlineDeselect() {
    return const TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: MyColors.lightColor,
      fontSize: Dimens.size14,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle popupSuccessMsg() {
    return const TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: MyColors.primaryColor,
      fontSize: Dimens.size20,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle popupPendingMsg() {
    return const TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: MyColors.starColor,
      fontSize: Dimens.size20,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle popupFailedMsg() {
    return const TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: MyColors.errorColor,
      fontSize: Dimens.size20,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle dateSuspend() {
    return const TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: MyColors.errorColor,
      fontSize: Dimens.size18,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle buttonTextStyle({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: isLight ? MyColors.whiteColor : MyColors.whiteColor,
      fontSize: Dimens.textSize14,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle textTitleTransferDialog({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: isLight ? MyColors.accentColor : MyColors.accentColor,
      fontSize: Dimens.textSize24,
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle textTitleUpdateProduct({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: isLight ? MyColors.accentColor : MyColors.accentColor,
      fontSize: Dimens.textSize14,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle textTitleLarge({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: isLight ? MyColors.whiteColor : MyColors.whiteColor,
      fontSize: Dimens.textSize32,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle titleAuthentication({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: isLight ? MyColors.primaryColor : MyColors.primaryColor,
      fontSize: Dimens.size36,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle subtitleAuthentication({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: isLight ? MyColors.accentColor : MyColors.accentColor,
      fontSize: Dimens.size14,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle textTitlePayment({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: isLight ? MyColors.primaryColor : MyColors.accentColor,
      fontSize: Dimens.textSize25,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle textIsNotPaid() {
    return const TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: MyColors.orangeButtonColor,
      fontSize: Dimens.textSize14,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle textIsPaid() {
    return const TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: MyColors.primaryColor,
      fontSize: Dimens.textSize14,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle textSpanPrice() {
    return const TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: MyColors.priceColor,
      fontSize: Dimens.textSize14,
    );
  }

  TextStyle textCodeOrder({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: isLight ? MyColors.blackColor : MyColors.blackColor,
      fontSize: Dimens.textSize18,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle textInfoProduct({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: isLight ? MyColors.dartGrayColor : MyColors.dartGrayColor,
      fontSize: Dimens.textSize11,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle cartLengthStyle() {
    return const TextStyle(
      fontFamily: MyTheme.fontFamily,
      color: MyColors.priceColor,
      fontSize: Dimens.textSize14,
      fontWeight: FontWeight.bold,
    );
  }
}
