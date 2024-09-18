import '../extensions/extension.dart';

class DecimalFormatHelper {
  static String formatNumber(String number) {
    if (number.isNullOrEmpty) return '';
    const separator = ',';
    String newString = '';
    String tail = '';
    String head = '';
    bool isNegative = number.contains('-');
    if (isNegative) number = number.substring(1);
    for (int i = number.length - 1; i >= 0; i--) {
      if (number[i] == '.') {
        tail = number.substring(i, number.length);
        head = number.substring(0, i);
        newString = '';
        break;
      } else {
        if ((number.length - 1 - i) % 3 == 0 && i != number.length - 1) {
          newString = separator + newString;
        }
        newString = number[i] + newString;
      }
    }

    for (int i = head.length - 1; i >= 0; i--) {
      if ((head.length - 1 - i) % 3 == 0 && i != head.length - 1) {
        newString = separator + newString;
      }
      newString = number[i] + newString;
    }
    newString = newString + tail;
    if (isNegative) {
      newString = '-$newString';
    }
    return newString;
  }
}
