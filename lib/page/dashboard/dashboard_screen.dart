import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:one_word/core/bloc/base_event.dart';
import 'package:one_word/extensions/extension.dart';

import 'package:one_word/page/dashboard/dashboard_bloc/dashboard.dart';
import 'package:one_word/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/core.dart';
import '../../../dependencies.dart';
import '../../models/models.dart';
import '../../services/services.dart';
import '../../utility/utility.dart';
import '../../widget/widget.dart';

@RoutePage()
class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final DashboardBloc bloc = AppDependencies.injector.get<DashboardBloc>();
  final _routeUtils = AppDependencies.injector.get<RouteUtils>();

  @override
  void initState() {
    super.initState();
    // bloc.initState();
    bloc.add(InitEvent());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(_routeUtils.getCurrentPath);
    return BlocConsumer<DashboardBloc, BaseState>(
      bloc: bloc,
      listener: (context, state) {},
      builder: (context, state) {
        if (state is LoadedState) {
          return _buildScreen(context, state);
        } else if (state is ErrorState) {
          final theme = Theme.of(context);
          return Padding(
            padding: const EdgeInsets.all(Dimens.size16),
            child: Center(
              child: Text(
                "service_error".tr(),
                style: theme.primaryTextTheme.displayMedium,
              ),
            ),
          );
        } else if (state is APIErrorState) {
          bloc.add(ErrorEvent());
          return const SizedBox(
            height: Dimens.size100,
            width: Dimens.size100,
            child: LoadingIndicator(),
          );
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

  Widget _titleContent({
    final DashboardViewModel? modelView,
    required final ThemeData theme,
  }) {
    return ContentCard(
      title: modelView?.wordInformation?.word ?? '',
      titleStyle: theme.primaryTextTheme.displayLarge,
      contentWidget: [
        Text(
          modelView?.wordInformation?.phonetic ?? '',
          style: theme.primaryTextTheme.displaySmall,
        ),
      ],
    );
  }

  Widget _phoneticsContent({
    final DashboardViewModel? modelView,
    required final ThemeData theme,
  }) {
    List<Phonetics> phonetics = modelView?.wordInformation?.phonetics ?? [];
    return ContentCard(
      title: 'pronounce'.tr(),
      contentWidget: [
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (_, index) {
            return (phonetics[index].license?.name.isNotNullOrEmpty ?? false)
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${'source'.tr()}: ${phonetics[index].license?.name ?? 'unknown'.tr()}',
                        style: theme.primaryTextTheme.displaySmall,
                      ),
                      Text(
                        phonetics[index].text ?? '',
                        style: theme.primaryTextTheme.displaySmall,
                      ),
                      phonetics[index].audio.isNotNullOrEmpty
                          ? PlayerWidget(
                              player: AudioPlayer()
                                ..setSourceUrl(
                                  phonetics[index].audio ?? '',
                                ),
                            )
                          : Text(
                              'audio_not_found'.tr(),
                              style: theme.primaryTextTheme.displaySmall,
                            ),
                    ],
                  )
                : const SizedBox();
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: Dimens.size0,
            );
          },
          itemCount: phonetics.length,
        ),
      ],
    );
  }

  Widget _meaningsContent({
    final DashboardViewModel? modelView,
    required final ThemeData theme,
  }) {
    List<Meanings> meanings = modelView?.wordInformation?.meanings ?? [];

    return ContentCard(
      title: 'Meanings'.tr(),
      contentWidget: [
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (_, index) {
            List<Definitions>? definitions = meanings[index].definitions;
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '[${meanings[index].partOfSpeech ?? ''}]',
                  style: theme.primaryTextTheme.displayMedium,
                ),
                Text(
                  definitions?.first.definition ?? '',
                  style: theme.primaryTextTheme.displaySmall,
                ),
                Text(
                  '${'example'.tr()}: ${definitions?.first.example ?? ''}',
                  style: theme.primaryTextTheme.displaySmall,
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: Dimens.spacing,
            );
          },
          itemCount: meanings.length,
        ),
      ],
    );
  }

  Widget _buildScreen(BuildContext context, LoadedState state) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final Size imageSize = bloc.getImageSize(size);

    final modelView = bloc.model;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.spacing,
        vertical: Dimens.spacing,
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Dimens.cardBorderRadius),
            child: Image.network(
              bloc.loadRandomImageLink(imageSize),
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  'assets/images/content_backgound_image.png',
                  width: imageSize.width,
                  height: imageSize.height,
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                // horizontal: Dimens.largeSpacing,
                // vertical: Dimens.defaultSpacing,
                ),
            height: imageSize.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _titleContent(
                    modelView: modelView,
                    theme: theme,
                  ),
                  const SizedBox(
                    height: Dimens.spacing,
                  ),
                  _phoneticsContent(
                    modelView: modelView,
                    theme: theme,
                  ),
                  const SizedBox(
                    height: Dimens.spacing,
                  ),
                  _meaningsContent(
                    modelView: modelView,
                    theme: theme,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
