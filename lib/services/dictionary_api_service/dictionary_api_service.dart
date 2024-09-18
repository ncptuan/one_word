import 'package:one_word/models/models.dart';

import '../../core/core.dart';
import '../services.dart';

class DictionaryApiService extends BaseService {
  String handleApiLink({required String requestParams}) {
    return '/api/v2/entries/en/$requestParams';
  }

  Future<DataResult<DataResponse<DictionaryApiResponse>>> getWordDetail(
    String word,
  ) async {
    return rest.request<DictionaryApiResponse>(
        Method.get, handleApiLink(requestParams: word),
        requestApiType: RequestApiType.dictionaryAPI);
  }
}
