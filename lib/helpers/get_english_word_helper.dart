import 'dart:math';

import 'package:flutter/services.dart';
import 'package:one_word/constants.dart';

import '../models/models.dart';

class GetEnglistWordHelper {
  static Future<String> readWordFromJson() async {
    final String response = await rootBundle
        .loadString(EnglishWordSource.simpleEnglishWord.getStoredLink())
        .then(
      (value) {
        var word = '';

        do {
          final random = Random();

          var position = random.nextInt(value.length);

          final endPosition = value.indexOf(CommonRegex.endOfWord,
              value.lastIndexOf(CommonRegex.findEnglistWordRegex, position));
          word = value.substring(
            value.lastIndexOf(CommonRegex.findEnglistWordRegex, position),
            endPosition < 0 ? value.length : endPosition,
          );
        } while (word.isEmpty || isWrongWord(word));

        return word;
      },
    );
    return response;
  }

  static bool isWrongWord(String word) {
    if (word.contains(CommonRegex.endOfWord) ||
        Constants.commonWords.toLowerCase().contains(word.toLowerCase()) ||
        Constants.preventWords.toLowerCase().contains(word.toLowerCase())) {
      return true;
    }
    return false;
  }
}
