// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_model_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleEnglishWord _$SimpleEnglishWordFromJson(Map<String, dynamic> json) =>
    SimpleEnglishWord(
      word: json['word'] as String?,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SimpleEnglishWordToJson(SimpleEnglishWord instance) =>
    <String, dynamic>{
      'word': instance.word,
      'count': instance.count,
    };
