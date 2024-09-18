import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:one_word/core/core.dart';
import 'package:one_word/dependencies.dart';
import 'package:one_word/models/view/model_view.dart';
import 'package:one_word/page/bloc/bloc.dart';
import 'package:one_word/page/login/login_bloc/login_bloc.dart';
import 'package:one_word/route/router.dart';
import 'package:one_word/style/dimens.dart';
import 'package:one_word/widget/common/base_button.dart';
import 'package:one_word/widget/common/border_text_input.dart';
import 'package:one_word/widget/common/common.dart';
import 'package:one_word/widget/common/confirm_dialog.dart';

import '../../validator/validator.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  final _formValidator = AppDependencies.injector.get<LoginValidator>();
  final LoginBloc bloc = AppDependencies.injector.get<LoginBloc>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, BaseState>(
      bloc: bloc,
      listener: (context, state) {
        if (state is LoginSuccess) {
          // AutoRouter.of(context).popAndPush(const DashBoardRoute());
        }
        if (state is LoginFail) {
          // BaseDialog.show(
          //   context: context,
          //   title: "Faile",
          //   content: "please login again",
          //   nameAction: "Okay",
          //   isDisplayCancelButton: false,
          // );
          bloc.hanldeLoginError(context);
        }
      },
      builder: (context, state) {
        if (state is LoadedState) {
          return _buildScreen(context, state);
        } else {
          return const SizedBox(
            width: 100,
            height: 100,
            child: LoadingIndicator(),
          );
        }
      },
    );
  }

  Widget _buildScreen(BuildContext context, LoadedState state) {
    final theme = Theme.of(context);
    final LoginViewModel viewModel = state.model;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.spacing),
          child: Form(
            key: _globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BorderTextFieldInput(
                  labelText: "User name".tr(),
                  labelTextStyle: theme.primaryTextTheme.titleMedium,
                  textStyle: theme.primaryTextTheme.titleMedium,
                  validator: _formValidator.validateUsername,
                  initText: viewModel.username ?? '',
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value) {
                    viewModel.username = value;
                  },
                ),
                const SizedBox(
                  height: Dimens.size12,
                ),
                BorderTextFieldInput(
                  labelText: "Password".tr(),
                  labelTextStyle: theme.primaryTextTheme.titleMedium,
                  textStyle: theme.primaryTextTheme.titleMedium,
                  validator: _formValidator.requiredValidate,
                  initText: viewModel.password ?? '',
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value) {
                    viewModel.password = value;
                  },
                ),
                const SizedBox(
                  height: Dimens.size48,
                ),
                BaseButton(
                  action: () {
                    if (_globalKey.currentState?.validate() ?? false) {
                      bloc.handleLogin();
                      return;
                    }
                  },
                  content: "Login",
                  height: 48,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
