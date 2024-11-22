import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:one_word/core/bloc/base_event.dart';
import 'package:one_word/core/core.dart';
import 'package:one_word/page/dashboard/dashboard_bloc/dashboard.dart';

import '../../../helpers/helpers.dart';
import '../../../models/models.dart';
import '../../../../core/bloc/bloc_core.dart';
import '../../../services/services.dart';

class DashboardBloc extends BaseBloc<DashboardViewModel, DashboardParams> {
  final DictionaryApiService dictionaryApiService;

  DashboardBloc(
    this.dictionaryApiService,
  ) : super(
          InitialState(),
          model: DashboardViewModel(
            dailyWord: '',
            wordInformation: DictionaryObject(),
          ),
          param: DashboardParams(),
        ) {
    on<InitEvent>((event, emit) async {
      emit(LoadingState());
      await readJson();
      final reponse =
          await dictionaryApiService.getWordDetail(model?.dailyWord ?? "");
      if ((reponse.data == null) && reponse.isSuccess) {
        readJson();
        emit(LoadingState());
        return;
      }
      if (reponse.isFailure) {
        emit(APIErrorState(reponse.error.toString(), params: param));
        return;
      }
      model?.wordInformation = reponse.data?.dataResponse.items?.first;
      param?.numberOfAPIError = 0;
      emit(LoadedState(param, model));
      return;
    });

    on<ErrorEvent>((event, emit) async {
      param?.numberOfAPIError++;
      if ((param?.numberOfAPIError ?? 10) <= 5) {
        add(InitEvent());
        return;
      } else {
        emit(ErrorState(event.message ?? ""));
        return;
      }
    });
  }

  Future<void> readJson() async {
    String response = await GetEnglistWordHelper.readWordFromJson();

    model?.dailyWord = response;
    // await getWordInformation(key: model?.dailyWord ?? '');
  }

  // Future<void> getWordInformation({required String key}) async {
  //   final reponse = await dictionaryApiService.getWordDetail(key);
  //   if ((reponse.data == null) && reponse.isSuccess) {
  //     readJson();
  //     emit(LoadingState());
  //     return;
  //   }
  //   if (reponse.isFailure) {
  //     emit(APIErrorState(reponse.error.toString(), params: param));
  //     return;
  //   }
  //   model?.wordInformation = reponse.data?.dataResponse.items?.first;
  //   param?.numberOfAPIError = 0;
  //   emit(LoadedState(param, model));
  //   return;
  // }

  // void initState() {
  //   emit(LoadingState());
  //   readJson();
  // }

  String loadRandomImageLink(Size size) {
    final width = size.width.toInt();
    final height = size.height.toInt();
    return 'https://picsum.photos/$width/$height';
  }

  Size getImageSize(Size size) {
    final width = (size.width);
    final height = (size.height * 0.8);
    final Size imageSize = Size(width, height);
    return imageSize;
  }
  // https://www.dictionaryapi.com/api/v3/references/collegiate/json/father?key=6b340341-a345-40a3-95c2-ca7e2e29606e

  // https://api.dictionaryapi.dev/api/v2/entries/en/hello

  Future<void> logout(BuildContext context) async {
    await pref.setAccessToken("a");
    await pref.setRefreshToken("a");
    // AutoRouter.of(context).popAndPush(LoginRoute());
  }

  void handleAPIEror({String? errorMessage}) {
    // param?.numberOfAPIError++;
    // if ((param?.numberOfAPIError ?? 10) <= 5) {
    //   initState();
    //   return;
    // } else {
    //   emit(ErrorState(errorMessage ?? ""));
    //   return;
    // }
  }
}
