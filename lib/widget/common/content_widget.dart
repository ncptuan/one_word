import 'package:flutter/material.dart';
import 'package:one_word/extensions/extension.dart';

import '../../style/style.dart';

class ContentCard extends StatelessWidget {
  final String? title;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? padding;
  final List<Widget>? contentWidget;

  const ContentCard({
    super.key,
    this.title,
    this.titleStyle,
    this.padding,
    this.contentWidget,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: MyColors.contentCardColor,
        borderRadius: BorderRadius.circular(Dimens.cardBorderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Dimens.spacing),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title?.upperCaseFirstLetterInString() ?? '',
                  style: titleStyle ?? theme.primaryTextTheme.displayMedium,
                ),
              ],
            ),
            ...contentWidget ?? []
          ],
        ),
      ),
    );
  }
}
