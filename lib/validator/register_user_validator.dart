import '../validator/base_validator.dart';

import '../constants.dart';

class RegisterUserValidator extends BaseValidator {
  String? validateFullName(String? fullName) {
    if (fullName == null ||
        fullName == '' ||
        !RegExp(CommonRegex.regexFullName).hasMatch(fullName)) {
      return 'Họ và tên không hợp lệ';
    }
    return null;
  }
}
