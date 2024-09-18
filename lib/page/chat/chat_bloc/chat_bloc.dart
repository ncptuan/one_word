import 'package:one_word/core/core.dart';
import 'package:one_word/models/models.dart';
import 'package:one_word/page/dashboard/dashboard_bloc/dashboard.dart';

class ChatBloc extends BaseCubit<ChatViewModel, ChatParams> {
  ChatBloc()
      : super(
          InitialState(),
          model: ChatViewModel(),
          param: ChatParams(),
        );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emit(LoadingState());
    emit(LoadedState(param, model));
  }
}
