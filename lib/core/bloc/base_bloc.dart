import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_word/core/bloc/base_event.dart';
import 'package:one_word/core/core.dart';

import '../../dependencies.dart';
import '../../preference/preference.dart';
import '../../utility/utility.dart';

abstract class BaseBloc<M, P> extends Bloc<BaseEvent, BaseState> {
  BaseBloc( super.state, {this.model, this.param});

  M? model;
  P? param;

  final pref = AppDependencies.injector.get<UserPreference>();

  void showLoading() => EasyLoading.show();

  Future<void> dismissLoading() async {
    await EasyLoading.dismiss();
  }

  LoadedState? get latestLoadedState {
    if (state is LoadedState) {
      return state as LoadedState;
    }
    return null;
  }
}
