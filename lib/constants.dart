// import 'package:fitplus_operation/model/view/master_data_model.dart';

import 'package:flutter/material.dart';

class Constants {
  static const kDurationBeforeRequestNewToken = 15; // seconds
  static const kRefreshTokenDurationDefault = 15; // seconds
  static List<List<double>> dotStop = [
    [0.0, 1.0],
    [0.0, 0.98],
    [0.0, 0.65],
    [0.0, 0.45],
    [0.0, 0.25],
    [0.0, 1.0],
  ];
  static const String emptyString = '';
  static const redAsterisk = ' *';
  static const defaultPageSize = 12;
  static const smallPageSize = 6;
  static const paginationPageSize = 20;
  static const defaultCrossAxisCountWeb = 3;
  static const defaultCrossAxisCountTablet = 2;
  static const defaultCrossAxisCountPhone = 1;
  static const defaultMaxline = 5;
  static const widthScreenMod3 = 1 / 3;
  static const allowedImageExtensions = ['png', 'jpeg', 'jpg'];
  static const arithmeticalRatio = 0.1;
  static const active = 'Active';
  static const inActive = 'InActive';
  static const debounceTagSearch = 'debounceTagSearch';
  static const searchDebounceDuration = 700;
  static const defaultAnimationDuration = Duration(milliseconds: 200);
  static const animationDuration700 = Duration(milliseconds: 700);
  static const maxPageSize = 10000;
  static const defaultPageIndex = 1;
  static const minProductBooking = 1;
  static const systemTag = 'System Tag';
  static const manualTag = 'Manual Tag';
  static const defaultHeightEdittext = 3;
  static const maxLength9 = 9;
  static const maxLength10 = 10;
  static const maxLength15 = 15;
  static const maxLength50 = 50;
  static const maxLength100 = 100;
  static const maxLength200 = 200;
  static const maxLength300 = 300;
  static const maxLength255 = 255;
  static const maxLength500 = 500;
  static const maxLength1000 = 1000;
  static const maxCallApi = 100;
  static const propertyTypeOperator = 'OPERATOR';
  static const propertyTypePT = 'PT';
  static const double defaultWidthDropdown = 164;
  static const defaultFilterAll = '-1';
  static const mon = 'Mon';
  static const tue = 'Tue';
  static const wed = 'Wed';
  static const thu = 'Thu';
  static const fri = 'Fri';
  static const sat = 'Sat';
  static const sun = 'Sun';
  static const zeroStr = '0';
  static const goodsCategory = 'Goods';
  static const serviceCategory = 'Service';
  static const club = 'Club';
  static const chain = 'Chain';
  static const statusOpen = 'OPEN';
  static const statusDone = 'DONE';
  static const paymentCash = 'Cash';
  static const onlinePayment = 'OnlinePayment';
  static const comma = ',';
  static const androidDirectory = '/storage/emulated/0/Download';
  static const nameFileTemplateGoodReceipt = 'InventoryTemplate';
  static const size10mb = '10mb';
  static const size300kb = '300kb';
  static const stringTemplate =
      'data:application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;base64,';
  static const approve = 'Approve';

  static const String dictionaryApiKey = '6b340341-a345-40a3-95c2-ca7e2e29606e';
  static const String commonWords = 'A The Of I';
  static const String preventWords = 'Fuck, Penis, Rape';
}

class OneWordLocale {
  static const en = Locale("en");
  static const vi = Locale("vi");
  static const supportLocales = [en, vi];
}

class ApiAction {
  ApiAction._();

  static const create = 'Create';
  static const update = 'Update';
  static const delete = 'Delete';
  static const read = 'Read';
  static const sendMail = 'SendMail';
  static const approve = 'Approve';
}

class CommonRegex {
  static const regexMobilePhone = r'^(0|84)(9|3|5|7|8)[0-9]{8,9}$';
  static const regexCellPhoneHasTenNumbers = r'^\d{10}$';
  static const regexLandLinePhone =
      r'(^(0)(203|204|205|206|207|208|209|210|211|212|213|214|215|216|218|219|220|221|222|225|226|227|228|229|232|233|234|235|236|237|238|239|251|252|254|255|256|257|258|259|260|261|262|263|269|270|271|272|273|274|275|276|277|290|291|292|293|294|296|297|299)[0-9]{7}$)|(^(0)(24|28)[0-9]{8}$)';
  static const regexEmail =
      r"^([a-zA-Z0-9]+([\w\.\'\!\#\$\%\&\*\+\-\/\=\?\^\`\{\|\}\~])?)+@([a-zA-Z0-9]+\.)+[a-zA-Z0-9]{2,8}$";
  static const regexPassport = r'^[a-zA-Z0-9]{8}$';
  static const regexEnterPrise = r'^([0-9]{10})?(-[0-9]{3})$|^([0-9]{10})$';
  static const usernameValidateReg =
      r'^[a-zA-Z0-9]([._](?![._])|[a-zA-Z0-9]){4,28}[a-zA-Z0-9]$';
  static const passwordValidateReg =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,64}$';
  static const phoneValidateReg = r'^[0-9]\d*$';
  static const emailAiaValidateReg =
      r"^(?!.*([$&+,:;=?@#|'<>.\-^*()%!]{2,}))(?=(\S+@\S+\.\S+){1,})";
  static const numberValidateReg = r'^-?([0-9]\d*)$';
  static const regexWebsite =
      r'^((https?|ftp|smtp):\/\/)?(www.)?[a-z0-9]+\.[a-z]+(\/[a-zA-Z0-9#]+\/?)*$';
  static const doubleValidateReg = r'^(-?)([0-9]*)(\.[0-9]?\d{0,5})?$';
  static const latLongValidateReg = r'^(-?)([0-9,]*)(\.[0-9]?\d{0,7})?$';
  static const percentValidateReg = r'^((100)|(\d{0,2}(\.\d{0,2})?))$';
  static const allowNegativeInterger = r'^[-+]?\d{0,15}$';
  static const intergerOnly = r'^\d{0,15}$';
  static const checkCode = r'[a-zA-Z0-9]';
  static const checkSpecialCharacter = r'[$&+,:;=?[\]@#|{}' '<>.^*()%!-/' ' ]';
  static const passwordValidateSimple = r'^\s*([^\s]\s*){6,24}$';
  static const regexOTP = r'^[^\s]{6}$';
  static const regexFullName =
      r'^[A-ZÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴÈÉẸẺẼÊỀẾỆỂỄÌÍỊỈĨÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠÙÚỤỦŨƯỪỨỰỬỮỲÝỴỶỸĐ][a-zàáạảãâầấậẩẫăằắặẳẵèéẹẻẽêềếệểễìíịỉĩòóọỏõôồốộổỗơờớợởỡùúụủũưừứựửữỳýỵỷỹđ]*(?:[ ][A-ZÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴÈÉẸẺẼÊỀẾỆỂỄÌÍỊỈĨÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠÙÚỤỦŨƯỪỨỰỬỮỲÝỴỶỸĐ][a-zàáạảãâầấậẩẫăằắặẳẵèéẹẻẽêềếệểễìíịỉĩòóọỏõôồốộổỗơờớợởỡùúụủũưừứựửữỳýỵỷỹđ]*)*$';
  static RegExp findEnglistWordRegex = RegExp(r'\b\w+\b');
  static RegExp endOfWord = RegExp(r'\s|,|\.|&|:|;|\"|\)');
}

class DataFormat {
  static const String ddMMyyyy = 'dd/MM/yyyy';
  static const String ddMMyyyyHHmm = 'dd/MM/yyyy HH:mm';
  static const String hhMM = 'HH:mm';
  static const String hhMMSS = 'HH:mm:ss';
}

class DebounceTag {
  static const refreshUi = 'refreshUi';
}

class TransactionStatus {
  static const waiting = 'Waiting';
  static const delivery = 'Delivery';
  static const done = 'Done';
}

class PaymentStatus {
  static const created = 'Created';
  static const sent = 'Sent';
  static const received = 'Received';
  static const charged = 'Charged';
  static const done = 'Done';
}
