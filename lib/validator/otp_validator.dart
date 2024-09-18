import '../constants.dart';
import '../validator/base_validator.dart';

class OTPValidator extends BaseValidator {
  String? validateOTP(String? otp) {
    if (otp == null ||
        otp == '' ||
        !RegExp(CommonRegex.regexOTP).hasMatch(otp)) {
      return 'Mã OTP phải bao gồm 6 chữ số';
    } else if (otp != "386791" && otp != "234518") {
      return 'Mã OTP không đúng. Vui lòng kiểm tra lại';
    }
    return null;
  }
}
