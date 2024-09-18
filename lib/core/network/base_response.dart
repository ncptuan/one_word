import 'package:get_it/get_it.dart';

class DataResponse<T extends BaseResponseModel> {
  int? statusCode;
  String? message;
  String? errorCode;
  late T dataResponse;

  DataResponse(this.statusCode, this.message, this.dataResponse);

  DataResponse.fromJson(Map<String, dynamic> json) {
    errorCode = json['ErrorCode'] as String?;
    message = json['ErrorMessage'] as String?;
    final response = GetIt.I.get<T>();
    dataResponse = response.fromJson(json);
  }
}

abstract class BaseResponseModel<T> {
  T fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
}

class StringResponseModel extends BaseResponseModel<String> {
  String? data;

  @override
  String fromJson(Map<String, dynamic> json) {
    return '';
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    return {};
  }
}

abstract class ListResponseModel<T> extends BaseResponseModel<T> {
  late List<T> items = <T>[];
}

class CommandResponseModel extends BaseResponseModel {
  @override
  CommandResponseModel fromJson(Map<String, dynamic> json) =>
      CommandResponseModel();

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

class ErrorItem {
  String? propertyName;
  String? errorCode;
  String? errorMessage;

  ErrorItem({this.propertyName, this.errorCode, this.errorMessage});

  ErrorItem.fromJson(Map<String, dynamic> json) {
    propertyName = json['PropertyName'];
    errorCode = json['ErrorCode'];
    errorMessage = json['ErrorMessage'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['PropertyName'] = propertyName;
    data['ErrorCode'] = errorCode;
    data['ErrorMessage'] = errorMessage;
    return data;
  }
}
