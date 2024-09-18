import '../extensions/extension.dart';

class DateStringFormatHelper {
  static String formatDate(String date) {
    if (date.isNullOrEmpty) return '';
    if (!date.contains('.')) {
      return date;
    }
    return date.replaceRange(
      date.indexOf('.'),
      date.length,
      '',
    );
    ;
  }
}
