import '../../services/services.dart';
import '../models.dart';

class DashboardViewModel {
  String? dailyWord;
  DictionaryObject? wordInformation;

  DashboardViewModel({
    this.dailyWord,
    this.wordInformation,
  });
}

class DashboardParams {
  int numberOfAPIError;
  DashboardParams({
    this.numberOfAPIError = 0,
  });
}
