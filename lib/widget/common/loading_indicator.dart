import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../constants.dart';
import '../../extensions/extension.dart';
import '../../style/style.dart';
import 'jumping_loading_indicator.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    Key? key,
    this.size = Dimens.size48,
    this.color = MyColors.primaryColor,
  }) : super(key: key);

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(
      color: color,
      size: size,
    );
  }
}

class JumpingLoading extends StatelessWidget {
  const JumpingLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: JumpingDots(
        numberOfDots: 6,
        dotColors: Theme.of(context).dotLoadingColor(),
        dotStops: Constants.dotStop,
      ),
    );
  }
}

void showJumpingLoading({required BuildContext context, String? content}) {
  final theme = Theme.of(context);
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Dialog(
      backgroundColor: theme.focusColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.size5)),
      child: SizedBox(
        width: Dimens.size530,
        height: Dimens.size387,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const JumpingLoading(),
            const SizedBox(
              height: Dimens.size24,
            ),
            Text(
              content ?? '',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    ),
  );
}
