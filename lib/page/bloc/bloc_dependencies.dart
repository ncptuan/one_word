import 'package:get_it/get_it.dart';

import 'bloc.dart';

class BlocDependencies {
  static void init(GetIt injector) {
    injector.registerFactory<DashboardBloc>(() => DashboardBloc(injector()));
    injector.registerFactory<LoginBloc>(() => LoginBloc());
    injector.registerFactory<ChatBloc>(() => ChatBloc());
  }
}
