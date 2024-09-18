// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:one_word/extensions/extension.dart';

part 'word_model_data.g.dart';

@JsonSerializable()
class SimpleEnglishWord {
  String? word;
  int? count;

  SimpleEnglishWord({
    this.word,
    this.count,
  });

  factory SimpleEnglishWord.fromJson(Map<String, dynamic> json) =>
      _$SimpleEnglishWordFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleEnglishWordToJson(this);

  get getCapitalString => word.upperCaseFirstLetterInString();
}
