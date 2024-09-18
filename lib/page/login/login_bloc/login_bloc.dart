import 'package:flutter/material.dart';
import 'package:one_word/core/core.dart';
import 'package:one_word/dependencies.dart';
import 'package:one_word/models/view/model_view.dart';
import 'package:one_word/page/bloc/bloc.dart';
import 'package:one_word/preference/user_preference.dart';

import '../../../widget/widget.dart';

class LoginBloc extends BaseCubit<LoginViewModel, LoginParams> {
  LoginBloc()
      : super(
          InitialState(),
          model: LoginViewModel(username: '', password: ''),
          param: LoginParams(),
        );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emit(LoadedState(param, model));
  }

  Future<void> handleLogin() async {
    final LoginViewModel model = latestLoadedState?.model;
    final username = model.username;
    final pass = model.password;
    if (username == 'tuan@gmail.com' && pass == '123456') {
      await pref.setAccessToken("wajdkahwdhawkdjh");
      await pref.setRefreshToken("dwawdwadawdadw");
      emit(LoginSuccess());
      return;
    }
    emit(LoginFail());
    return;
  }

  void hanldeLoginError(BuildContext context) {
    BaseDialog.show(
      context: context,
      title: "Faile",
      content: "please login again",
      nameAction: "Okay",
      isDisplayCancelButton: false,
      action: () {
        Navigator.of(context).pop();
        model = LoginViewModel(username: "", password: "");
        emit(LoadedState(param, model));
      },
    );
  }

 
}
