import 'package:auto_route/auto_route.dart';
import 'package:one_word/page/page.dart';
import 'package:one_word/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/core.dart';
import '../../../dependencies.dart';
import '../../utility/utility.dart';
import '../../widget/widget.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final ChatBloc bloc = AppDependencies.injector.get<ChatBloc>();
  final _routeUtils = AppDependencies.injector.get<RouteUtils>();

  @override
  void initState() {
    super.initState();
    bloc.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(_routeUtils.getCurrentPath);
    return BlocConsumer<ChatBloc, BaseState>(
      bloc: bloc,
      listener: (context, state) {},
      builder: (context, state) {
        if (state is LoadedState) {
          return _buildScreen(context, state);
        } else {
          return const SizedBox(
            height: Dimens.size100,
            width: Dimens.size100,
            child: LoadingIndicator(),
          );
        }
      },
    );
  }

  Widget _buildScreen(BuildContext context, LoadedState state) {
    final theme = Theme.of(context);
    return Container(
      // color: Colors.red,
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.spacing,
        vertical: Dimens.spacing,
      ),
      child: Center(
        child: Text(
          'data',
          style: theme.textTheme.displayMedium,
        ),
      ),
    );
  }
}
