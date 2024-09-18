import 'package:json_annotation/json_annotation.dart';

import '../../core/core.dart';

part 'dictionary_api_response.g.dart';

@JsonSerializable()
class DictionaryApiResponse extends BaseResponseModel {
  List<DictionaryObject>? items;
  int? totalRecords;

  DictionaryApiResponse({
    this.items,
    this.totalRecords,
  });

  @override
  DictionaryApiResponse fromJson(Map<String, dynamic> json) =>
      _$DictionaryApiResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DictionaryApiResponseToJson(this);
}

@JsonSerializable()
class DictionaryObject {
  String? word;
  String? phonetic;
  List<Phonetics>? phonetics;
  String? origin;
  List<Meanings>? meanings;
  License? license;
  List<String>? sourceUrls;

  DictionaryObject({
    this.word,
    this.phonetic,
    this.phonetics,
    this.origin,
    this.meanings,
    this.license,
    this.sourceUrls,
  });

  factory DictionaryObject.fromJson(Map<String, dynamic> json) =>
      _$DictionaryObjectFromJson(json);

  Map<String, dynamic> toJson() => _$DictionaryObjectToJson(this);
}

@JsonSerializable()
class Phonetics {
  String? text;
  String? audio;
  String? sourceUrl;
  License? license;

  Phonetics({
    this.text,
    this.audio,
    this.sourceUrl,
    this.license,
  });

  factory Phonetics.fromJson(Map<String, dynamic> json) =>
      _$PhoneticsFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneticsToJson(this);
}

@JsonSerializable()
class Meanings {
  String? partOfSpeech;
  List<Definitions>? definitions;
  List<String>? synonyms;
  List<String>? antonyms;

  Meanings({
    this.partOfSpeech,
    this.definitions,
    this.antonyms,
    this.synonyms,
  });

  factory Meanings.fromJson(Map<String, dynamic> json) =>
      _$MeaningsFromJson(json);

  Map<String, dynamic> toJson() => _$MeaningsToJson(this);
}

@JsonSerializable()
class Definitions {
  String? definition;
  String? example;
  List<String>? synonyms;
  List<String>? antonyms;

  Definitions({this.definition, this.example, this.synonyms, this.antonyms});

  factory Definitions.fromJson(Map<String, dynamic> json) =>
      _$DefinitionsFromJson(json);

  Map<String, dynamic> toJson() => _$DefinitionsToJson(this);
}

@JsonSerializable()
class License {
  String? name;
  String? url;

  License({this.name, this.url});

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseToJson(this);
}
