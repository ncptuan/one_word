import 'package:flutter/material.dart';

import '../../style/style.dart';

class ItemCard extends StatelessWidget {
  final Color? bgColor;
  final String content;
  final Color? borderColor;
  final VoidCallback? action;
  final double? width;
  final double? height;
  final double borderRadius;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final bool disable;
  final bool hasShadow;
  final String? imageIcon;
  final double? iconSize;

  const ItemCard({
    Key? key,
    required this.action,
    required this.content,
    this.bgColor,
    this.width,
    this.height,
    this.borderRadius = Dimens.size12,
    this.borderColor,
    this.padding,
    this.textStyle,
    this.disable = false,
    this.hasShadow = true,
    this.imageIcon,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _space = SizedBox(width: Dimens.size10);
    final theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    final backgroundColor = bgColor ?? MyColors.whiteColor;
    return InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: disable ? null : action,
      child: Container(
        width: size.width * 0.4,
        height: size.width * 0.4,
        alignment: Alignment.center,
        padding: padding ?? Dimens.buttonPaddingPhone,
        decoration: BoxDecoration(
          color: disable ? backgroundColor.withOpacity(0.5) : backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: borderColor != null
              ? Border.all(color: borderColor!, width: Dimens.size1)
              : null,
          boxShadow: hasShadow ? const [Dimens.cardShadow] : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageIcon ?? '',
              fit: BoxFit.fitHeight,
              height: iconSize ?? Dimens.size48,
            ),
            const SizedBox(
              height: Dimens.size8,
            ),
            Text(
              content,
              style: textStyle ?? theme.primaryTextTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
