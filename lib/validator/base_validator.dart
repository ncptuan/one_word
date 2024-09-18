import 'package:basic_utils/basic_utils.dart';
import 'package:easy_localization/easy_localization.dart';

import '../constants.dart';

// Extends from this class to build screen validator
abstract class BaseValidator {
  String? requiredValidate(Object? value,
      {String? errorMessage, String? fieldName}) {
    if ((value is String && StringUtils.isNullOrEmpty(value)) ||
        value == null) {
      if (errorMessage != null) return errorMessage;
      if (fieldName != null) return 'please fill the information $fieldName';
      return 'please fill the information';
    }
    return null;
  }

  String? requiredValidateWithoutMsg(Object? value,
      {String? errorMessage, String? fieldName}) {
    if ((value is String && StringUtils.isNullOrEmpty(value)) ||
        value == null) {
      if (errorMessage != null) return errorMessage;
      if (fieldName != null) return ' $fieldName';
      return '';
    }
    return null;
  }

  String? minLengthValidate(String value, int min,
      {String? errorMessage, String? fieldName}) {
    if (value.length < min) {
      if (errorMessage != null) return errorMessage;
      if (fieldName != null) {
        return '${tr('max_length_field').replaceAll('#n', '$min')} $fieldName';
      }
      return tr('max_length_field').replaceAll('#n', '$min');
    }
    return null;
  }

  String? maxLengthValidate(String value, int max,
      {String? errorMessage, String? fieldName}) {
    if (value.length > max) {
      if (errorMessage != null) return errorMessage;
      if (fieldName != null) {
        return '${tr(
          'max_length_field',
        ).replaceAll('#n', '$max')} $fieldName';
      }
      return tr('max_length_field').replaceAll('#n', '$max');
    }
    return null;
  }

  String? lengthValidate(String value, int n, {String? fieldName}) {
    if (value.length != n) {
      if (fieldName != null) {
        return '${tr('length_field').replaceAll('#n', '$n')} $fieldName';
      }
      return tr('length_field').replaceAll('#n', '$n');
    }
    return null;
  }

  String? formatDateTimeValidate(DateTime? value,
      {String format = DataFormat.ddMMyyyy}) {
    return null;
  }

  String? validateRegex(String? value, String regex, String errorMessage) {
    final rex = RegExp(regex);
    if (rex.hasMatch(value!)) return null;
    return errorMessage;
  }

  String? validateEmail(String? email) {
    if (email == null ||
        (email != '' &&
            !RegExp(CommonRegex.emailAiaValidateReg).hasMatch(email))) {
      return 'email_validate_error'.tr();
    }
    return null;
  }

  String? validatePhone(String? phone) {
    if (phone == null ||
        phone == '' ||
        !RegExp(CommonRegex.phoneValidateReg).hasMatch(phone)) {
      return 'Số điện thoại không hợp lệ';
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password == null ||
        password == '' ||
        !RegExp(CommonRegex.passwordValidateSimple).hasMatch(password)) {
      return 'Mật khẩu không hợp lệ';
    }
    return null;
  }
}
