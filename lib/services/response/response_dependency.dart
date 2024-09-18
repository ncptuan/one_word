import 'package:get_it/get_it.dart';

import '../services.dart';

class ResponseDependencies {
  static void init(GetIt injector) {
    injector
        .registerFactory<DictionaryApiResponse>(() => DictionaryApiResponse());
  }
}