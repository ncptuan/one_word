import 'enum.dart';

enum EnglishWordSource implements EnumInterface {
  simpleEnglishWord('simple_english_word'),
  toeicEnglishWord('toeic_english_word');

  @override
  String get rawValue => _enumValue;

  final String _enumValue;

  const EnglishWordSource(this._enumValue);

  String getStoredLink() {
    switch (this) {
      case EnglishWordSource.simpleEnglishWord:
        return 'assets/data/simple_english_word.json';
      case EnglishWordSource.toeicEnglishWord:
        return '';
      default:
        return 'assets/data/simple_english_word.json';
    }
  }
}
