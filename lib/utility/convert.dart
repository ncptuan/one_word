import 'dart:convert';
import 'dart:io';

import 'package:basic_utils/basic_utils.dart';
import '../extensions/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../constants.dart';

class ConvertUtility {
  static final DateFormat _calendarFormat = DateFormat('MMMM yyyy');
  static final DateFormat _dayOfWeeksFormat = DateFormat('EEEE');
  static final DateFormat _dayFormat = DateFormat('dd');
  static final DateFormat _yearFormat = DateFormat('yyyy');
  static final DateFormat _voucherDateFormat = DateFormat('dd.MM.yyyy');
  static final DateFormat _displayDateFormat = DateFormat('dd/MM/yyyy');
  static final DateFormat _dataDateFormat = DateFormat('yyyy-MM-dd');
  static final DateFormat _valueDateFormat = DateFormat('yyyyMMdd');
  static final DateFormat _preferenceDateFormat =
      DateFormat('dd/MM/yyyy HH:mm:ss');
  static final DateFormat _dateTime = DateFormat('HH:mm - dd/MM/yyyy');
  static final DateFormat _dateTimeReverse = DateFormat('dd/MM/yyyy - HH:mm');
  static final DateFormat _timerFormat = DateFormat('HH:mm:ss');
  static final DateFormat _displayTimeFormat = DateFormat('HH:mm');
  static final NumberFormat _currencyFormat =
      NumberFormat.currency(locale: 'vi_VN', symbol: '');
  static int tickNumber = 10000;
  static int unixEpochTicks = 621355968000000000;
  static int millisecondsFrom2020 = 1577836800000;
  static final DateFormat _timeFormat = DateFormat('HH:mm');
  static final DateFormat _dayTimeFormat = DateFormat('dd/MM/yyyy HH:mm');

  static String calendarFormat(DateTime date) {
    return _calendarFormat.format(date);
  }

  static String dayOfWeeksFormat(DateTime date) {
    return _dayOfWeeksFormat.format(date);
  }

  static String? timerToString(DateTime? date) {
    if (date == null) return null;
    return _timerFormat.format(date);
  }

  static String timeToString(DateTime date) {
    return _timeFormat.format(date);
  }

  static String dayFormat(DateTime date) {
    return _dayFormat.format(date);
  }

  static String dateToString(DateTime date) {
    return _voucherDateFormat.format(date);
  }

  static String formatDisplayDate(DateTime? date) {
    if (date == null) {
      return '';
    }
    return _displayDateFormat.format(date);
  }

  static String formatDataDate(DateTime? date) {
    if (date == null) {
      return '';
    }
    return _dataDateFormat.format(date);
  }

  static String formatPreferenceDate(DateTime date) {
    return _preferenceDateFormat.format(date);
  }

  static String formatDayTime(DateTime date) {
    return _dayTimeFormat.format(date);
  }

  static String formatDateTime(DateTime date) {
    return _dateTime.format(date);
  }

  static String formatDateTimeReverse(DateTime date) {
    return _dateTimeReverse.format(date);
  }

  static String formatValueDate(DateTime date) {
    return _valueDateFormat.format(date);
  }

  static DateTime? convertPreferenceDate(String? text) {
    if (StringUtils.isNullOrEmpty(text)) return null;
    try {
      return _preferenceDateFormat.parse(text!);
    } catch (_) {}
    return null;
  }

  static DateTime? convertDayTimeDate(String? text) {
    if (StringUtils.isNullOrEmpty(text)) return null;
    try {
      return _dayTimeFormat.parse(text!);
    } catch (_) {}
    return null;
  }

  static DateTime? convertDisplayDate(String text) {
    if (StringUtils.isNullOrEmpty(text)) return null;
    try {
      return _displayDateFormat.parse(text);
    } catch (_) {}
    return null;
  }

  static String dateTimeToString(DateTime date) {
    return _displayDateFormat.format(date);
  }

  static String formatDateTimeToString(DateTime? date) {
    if (date == null) return '';
    return _displayDateFormat.format(date);
  }

  static String formatTimeToString(DateTime? date) {
    if (date == null) return '';
    return _displayTimeFormat.format(date);
  }

  static List<String> dateTimeToListString(DateTime date) {
    return _displayDateFormat.format(date).split('/');
  }

  static String formatCurrency(double amount,
      [int minDigit = 0, int maxDigit = 1]) {
    _currencyFormat.maximumFractionDigits = maxDigit;
    _currencyFormat.minimumFractionDigits = minDigit;
    return _currencyFormat.format(amount).trim();
  }

  static String formatInt(int number) {
    return _currencyFormat.format(number).trim();
  }

  static double getNumber(String currencyValue) {
    if (currencyValue == '') return 0;
    return _currencyFormat.parse(currencyValue).toDouble();
  }

  static int convertPercent(double value) {
    return ((value) * 100).toInt();
  }

  static bool? convertIntToBool(int? val) {
    if (val == 1) {
      return true;
    } else if (val == 0) {
      return false;
    } else {
      return null;
    }
  }

  static int? convertBoolToInt(bool val) {
    if (val == true) {
      return 1;
    } else if (val == false) {
      return 0;
    } else {
      return null;
    }
  }

  static String? convertImageToBase64(String imagePath) {
    try {
      var file = File(imagePath);
      if (file.existsSync()) {
        return base64Encode(file.readAsBytesSync());
      }
    } catch (_) {}
    return null;
  }

  static Image? convertBase64ToImage(String? base64) {
    if (base64 != null && base64.isNotEmpty) {
      return Image.memory(
        base64Decode(base64),
        fit: BoxFit.cover,
      );
    }
    return null;
  }

  static double? stringToDouble(String text) {
    if (StringUtils.isNullOrEmpty(text)) return null;
    return double.tryParse(text);
  }

  static int? stringToInt(String text) {
    if (StringUtils.isNullOrEmpty(text)) return null;
    return int.tryParse(text);
  }

  static List<String> split(String text) {
    if (StringUtils.isNullOrEmpty(text)) return [];
    var result = text.split(',');
    result.removeWhere((i) => StringUtils.isNullOrEmpty(i));
    return result;
  }

  static String join(Iterable<String>? items) {
    if (items == null || items.isEmpty) return '';
    return items.join(',');
  }

  static int toTicks(DateTime date) {
    return ((date.millisecondsSinceEpoch * tickNumber) + unixEpochTicks);
  }

  static int toMillisecondTicksFrom2020(DateTime date) {
    return (date.millisecondsSinceEpoch - millisecondsFrom2020);
  }

  static String formatDisplayYear(DateTime? date) {
    if (date == null) return '';
    return _yearFormat.format(date);
  }

  static DateTime? convertDisplayYear(String? text) {
    if (StringUtils.isNullOrEmpty(text)) return null;
    try {
      return _yearFormat.parse(text!);
    } catch (err) {
      debugPrint('convertDisplayYear $text');
      return null;
    }
  }

  // Use when conflict between dd/MM/yyyy and ISO format
  static DateTime fixParseDateTime(String date) {
    final res = DateTime.tryParse(date);

    return res ?? DateFormat(DataFormat.ddMMyyyy).parse(date);
  }

  static double convertDaysBetween(DateTime fromDate, DateTime toDate) {
    fromDate = DateTime(fromDate.year, fromDate.month, fromDate.day);
    toDate = DateTime(toDate.year, toDate.month, toDate.day);
    return ((toDate.difference(fromDate)).inHours) / 24;
  }

  static DateTime? convertStringToTime(String? time) {
    if (StringUtils.isNullOrEmpty(time)) return null;
    return DateFormat(DataFormat.hhMMSS).parse(time!);
  }

  static DateTime? convertStringToDate(String? Date) {
    if (StringUtils.isNullOrEmpty(Date)) return null;
    return DateFormat(DataFormat.ddMMyyyyHHmm).parse(Date!);
  }

  static List<String> convertStringToArray(String? value) {
    if (StringUtils.isNullOrEmpty(value)) return [];
    final splitvalues = value!.split(',');
    List<String> splitList = [];
    for (var element in splitvalues) {
      splitList.add(element);
    }
    return splitList;
  }

  static String convertSessionTime(String time) {
    try {
      var temp = DateFormat(DataFormat.hhMM).parse(time);
      return DateFormat(DataFormat.hhMM).format(temp);
    } catch (err) {
      return '';
    }
  }

  static DateTime getDate(DateTime d) => DateTime(d.year, d.month, d.day);

  static DateTime getPickedTime(DateTime? timeSelected, DateTime dateSelected) {
    var pickedTime = DateTime(dateSelected.year, dateSelected.month,
        dateSelected.day, timeSelected!.hour, timeSelected.minute);
    return pickedTime;
  }

  static getBodyResponse(Uint8List body) => json.decode(utf8.decode(body));

  static String convertNameStatusToId(String nameStatus) {
    if (nameStatus == 'Created') {
      return '1';
    } else if (nameStatus == 'Verified') {
      return '2';
    } else {
      return '3';
    }
  }

  static String convertNameRoleToId(String nameRole) {
    if (nameRole == 'Admin') {
      return '1';
    } else {
      return '1';
    }
  }
}
