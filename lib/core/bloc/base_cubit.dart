import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../dependencies.dart';
import '../../preference/preference.dart';
import '../../utility/utility.dart';
import 'base_state.dart';

abstract class BaseCubit<M, P> extends Cubit<BaseState> {
  String? title;
  String? id;

  M? model;
  P? param;

  final pref = AppDependencies.injector.get<UserPreference>();
  final StreamController<bool> _loadingController =
      StreamController<bool>.broadcast();

  StreamSink<bool> get loadingSink => _loadingController.sink;
  Stream<bool> get loadingStream => _loadingController.stream;
  BaseCubit(BaseState state, {this.model, this.param}) : super(state);
  LoadedState? get latestLoadedState {
    if (state is LoadedState) {
      return state as LoadedState;
    }
    return null;
  }

  void initState() {}

  void didChangeDependencies() {}

  void onResume() {}

  void onPause() {}

  void onDetach() {}

  void onInactive() {}

  void showLoading() => EasyLoading.show();

  Future<void> dismissLoading() async {
    await EasyLoading.dismiss();
  }

  @mustCallSuper
  @override
  Future<void> close() {
    // TODO: implement close
    _loadingController.close();
    return super.close();
  }
}
