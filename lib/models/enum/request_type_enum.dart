import 'package:one_word/models/enum/enum_interface.dart';

enum RequestApiType implements EnumInterface {
  dictionaryAPI('dictionary_api'),
  oneWordAPI('one_word_api');

  @override
  String get rawValue => _enumValue;

  final String _enumValue;

  const RequestApiType(this._enumValue);
}