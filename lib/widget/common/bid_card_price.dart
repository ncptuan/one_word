
import 'package:flutter/material.dart';

import '../../helpers/helpers.dart';
import '../../style/dimens.dart';
import '../../style/style.dart';
import '../widget.dart';

class BidCard extends StatelessWidget {
  final Color? colorTitle;
  final String? nameCard;
  final String? content;
  final bool isDisplayButton;
  final VoidCallback? buttonAction;

  const BidCard({
    super.key,
    this.colorTitle,
    this.nameCard,
    this.content,
    this.isDisplayButton = false,
    this.buttonAction,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Expanded(
      flex: 4,
      child: Container(
        height: Dimens.size110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.size8),
            border: Border.all(color: MyColors.greyLowColor)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: colorTitle,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(Dimens.size6),
                      topRight: Radius.circular(Dimens.size6),
                    ),
                  ),
                  child: Text(nameCard ?? '', textAlign: TextAlign.center)),
            ),
            Expanded(
              flex: 7,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      content.toString() == 'null' ? '' : content.toString(),
                      textAlign: TextAlign.center,
                    ),
                    if (isDisplayButton) ...[
                      BaseButton(
                        action: buttonAction,
                        content: 'Mua',
                        width: size.width * 0.15,
                        bgColor: theme.buttonTheme.colorScheme?.primary,
                        hasShadow: false,
                      )
                    ]
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
