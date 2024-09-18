import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../dependencies.dart';
import '../core.dart';

abstract class BaseCubitStatefulWidget extends StatefulWidget {
  const BaseCubitStatefulWidget({Key? key}) : super(key: key);
}

abstract class BaseCubitStateFulWidgetState<B extends BaseCubit,
        S extends BaseCubitStatefulWidget> extends State<S>
    with WidgetsBindingObserver {
  final B bloc = AppDependencies.injector.get<B>();
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    bloc.initState();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    bloc.didChangeDependencies();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    bloc.close();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        onResume();
        break;
      case AppLifecycleState.paused:
        onPause();
        break;
      case AppLifecycleState.inactive:
        onInactive();
        break;
      default:
        onDetach();
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: StreamBuilder<bool>(
          stream: bloc.loadingStream,
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data == true) {
                EasyLoading.show();
              } else {
                EasyLoading.dismiss();
              }
            }
            return buildBody(context);
          }),
    );
  }

  @mustCallSuper
  void onResume() {
    bloc.onResume();
  }

  @mustCallSuper
  void onPause() {
    bloc.onPause();
  }

  @mustCallSuper
  void onDetach() {
    bloc.onDetach();
  }

  @mustCallSuper
  void onInactive() {
    bloc.onInactive();
  }

  Widget buildBody(BuildContext context);
  PreferredSizeWidget? buildAppbar(BuildContext context) => null;
  Widget? buildDrawer(BuildContext context) => null;
}
