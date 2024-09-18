// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryApiResponse _$DictionaryApiResponseFromJson(
        Map<String, dynamic> json) =>
    DictionaryApiResponse(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => DictionaryObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalRecords: (json['totalRecords'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DictionaryApiResponseToJson(
        DictionaryApiResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalRecords': instance.totalRecords,
    };

DictionaryObject _$DictionaryObjectFromJson(Map<String, dynamic> json) =>
    DictionaryObject(
      word: json['word'] as String?,
      phonetic: json['phonetic'] as String?,
      phonetics: (json['phonetics'] as List<dynamic>?)
          ?.map((e) => Phonetics.fromJson(e as Map<String, dynamic>))
          .toList(),
      origin: json['origin'] as String?,
      meanings: (json['meanings'] as List<dynamic>?)
          ?.map((e) => Meanings.fromJson(e as Map<String, dynamic>))
          .toList(),
      license: json['license'] == null
          ? null
          : License.fromJson(json['license'] as Map<String, dynamic>),
      sourceUrls: (json['sourceUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DictionaryObjectToJson(DictionaryObject instance) =>
    <String, dynamic>{
      'word': instance.word,
      'phonetic': instance.phonetic,
      'phonetics': instance.phonetics,
      'origin': instance.origin,
      'meanings': instance.meanings,
      'license': instance.license,
      'sourceUrls': instance.sourceUrls,
    };

Phonetics _$PhoneticsFromJson(Map<String, dynamic> json) => Phonetics(
      text: json['text'] as String?,
      audio: json['audio'] as String?,
      sourceUrl: json['sourceUrl'] as String?,
      license: json['license'] == null
          ? null
          : License.fromJson(json['license'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PhoneticsToJson(Phonetics instance) => <String, dynamic>{
      'text': instance.text,
      'audio': instance.audio,
      'sourceUrl': instance.sourceUrl,
      'license': instance.license,
    };

Meanings _$MeaningsFromJson(Map<String, dynamic> json) => Meanings(
      partOfSpeech: json['partOfSpeech'] as String?,
      definitions: (json['definitions'] as List<dynamic>?)
          ?.map((e) => Definitions.fromJson(e as Map<String, dynamic>))
          .toList(),
      antonyms: (json['antonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$MeaningsToJson(Meanings instance) => <String, dynamic>{
      'partOfSpeech': instance.partOfSpeech,
      'definitions': instance.definitions,
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
    };

Definitions _$DefinitionsFromJson(Map<String, dynamic> json) => Definitions(
      definition: json['definition'] as String?,
      example: json['example'] as String?,
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      antonyms: (json['antonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DefinitionsToJson(Definitions instance) =>
    <String, dynamic>{
      'definition': instance.definition,
      'example': instance.example,
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
    };

License _$LicenseFromJson(Map<String, dynamic> json) => License(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$LicenseToJson(License instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
