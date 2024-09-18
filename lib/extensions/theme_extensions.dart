import 'package:flutter/material.dart';

import '../style/style.dart';

/// Ex:
/// import '~/theme_extensions.dart';
///
/// Theme.of(context).primaryButtonColor;
/// Theme.of(context).primaryBackgroundColor;
/// Theme.of(context).borderColor1;

extension AppThemeExtension on ThemeData {
  /// FIXME: Change dark color when dark mode available

  /// Background Button Color
  Color primaryButtonColor({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight ? MyColors.primaryColor : MyColors.primaryColor;
  }

  Color warningColor({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight ? MyColors.colorWarning : MyColors.colorWarning;
  }

  Color toggleActiveColor({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight ? MyColors.toggleActiveColor : MyColors.toggleActiveColor;
  }

  List<List<Color>> dotLoadingColor({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight ? MyColors.dotLoadingColor : MyColors.dotLoadingColor;
  }

  Color meetingScheduleColorVip({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight
        ? MyColors.meetingScheduleColor2
        : MyColors.meetingScheduleColor2;
  }

  Color meetingScheduleColor({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight
        ? MyColors.meetingScheduleColor1
        : MyColors.meetingScheduleColor1;
  }

  Color manualTagColor({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight ? MyColors.manualTagColor : MyColors.manualTagColor;
  }

  Color transperentDialogBg({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight
        ? MyColors.blackColorTransperentDialog
        : MyColors.blackColorTransperentDialog;
  }

  Color statusOpenColor({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight ? MyColors.secondaryAccent : MyColors.manualTagColor;
  }

  Color currentDateColor({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight ? MyColors.systemTagColor : MyColors.systemTagColor;
  }

  Color buttonBorderColor({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight ? MyColors.accentColor : MyColors.manualTagColor;
  }

  Color bgWhiteColor({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight ? MyColors.whiteColor : MyColors.whiteColor;
  }

  Color bgLightGreenColor({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight ? MyColors.lightGreenColor : MyColors.lightGreenColor;
  }

  Color requiedColor({bool? isLightMode, Color? color}) {
    final isLight = isLightMode ?? MyTheme.isLightMode;

    return isLight
        ? MyColors.fieldRequiredRedColor
        : MyColors.fieldRequiredRedColor;
  }
}
