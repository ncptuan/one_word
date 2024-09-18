
import 'package:flutter/material.dart';
import 'package:one_word/extensions/extension.dart';

import '../../style/style.dart';

class BaseButton extends StatelessWidget {
  final Color? bgColor;
  final String content;
  final Color? borderColor;
  final VoidCallback? action;
  final double? width;
  final double? height;
  final double borderRadius;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final bool disable;
  final bool hasShadow;
  final MainAxisAlignment contentPostion;

  const BaseButton({
    Key? key,
    required this.action,
    required this.content,
    this.bgColor,
    this.width,
    this.height,
    this.leftIcon,
    this.rightIcon,
    this.borderRadius = Dimens.size12,
    this.borderColor,
    this.padding,
    this.textStyle,
    this.disable = false,
    this.hasShadow = true,
    this.contentPostion = MainAxisAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _space = SizedBox(width: Dimens.size10);
    final theme = Theme.of(context);
    final backgroundColor = bgColor ?? theme.cardColor;
    return InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: disable ? null : action,
      child: Container(
        width: width,
        height: height,
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
        child: Row(
          mainAxisAlignment: contentPostion,
          children: [
            if (leftIcon != null) ...[leftIcon!, _space],
            Flexible(
              child: Text(
                content,
                style: textStyle ?? theme.textTheme.buttonTextStyle(),
              ),
            ),
            if (rightIcon != null) ...[_space, rightIcon!],
          ],
        ),
      ),
    );
  }
}
