import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';

import '../../style/style.dart';
import '../widget.dart';

class BasePopupWidget extends StatelessWidget {
  final String? title;
  final TextStyle? titleStyle;
  final String? labelCancel;
  final String? labelSubmit;
  final VoidCallback? onCancel;
  final VoidCallback? onSubmit;
  final Color? colorCancel;
  final Color? colorSubmit;
  final Widget? child;
  final List<Widget>? listAction;
  final Widget? iconTitle;
  final double? width;
  final bool disable;
  final bool isDisplayCancelButton;

  const BasePopupWidget({
    Key? key,
    this.title,
    this.onCancel,
    this.onSubmit,
    this.child,
    this.width,
    this.listAction,
    this.labelCancel,
    this.labelSubmit,
    this.disable = false,
    this.colorCancel,
    this.colorSubmit,
    this.iconTitle,
    this.titleStyle,
    this.isDisplayCancelButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Visibility(
                visible: iconTitle != null,
                child: Row(
                  children: [
                    iconTitle ?? const SizedBox.shrink(),
                    const SizedBox(
                      width: Dimens.size24,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  title ?? '',
                  style: titleStyle ?? theme.textTheme.titleLarge,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: const EdgeInsets.all(Dimens.size14),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: theme.primaryColorDark.withOpacity(0.2),
                          spreadRadius: 0,
                          blurRadius: 8,
                          offset: const Offset(0, 5),
                        )
                      ],
                      color: theme.colorScheme.onSurface),
                  child: const Icon(
                    Icons.close,
                    size: Dimens.size16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: Dimens.size20,
          ),
          child ?? const SizedBox.shrink(),
          const SizedBox(
            height: Dimens.size30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              isDisplayCancelButton
                  ? BaseButton(
                      action: onCancel ?? () => Navigator.pop(context),
                      content: labelCancel ?? tr('close'),
                      borderColor: Theme.of(context).dividerColor,
                      bgColor: colorCancel ?? Colors.transparent,
                      textStyle:
                          Theme.of(context).primaryTextTheme.displayLarge,
                      padding: const EdgeInsets.symmetric(
                        horizontal: Dimens.size24,
                        vertical: Dimens.size12,
                      ),
                    )
                  : const SizedBox.shrink(),
              const SizedBox(
                width: Dimens.size24,
              ),
              ...?listAction,
              if (onSubmit != null)
                Tooltip(
                  message: disable ? tr('permission_deny') : '',
                  child: BaseButton(
                    action: onSubmit ?? () => Navigator.pop(context),
                    content: labelSubmit ?? tr('save'),
                    disable: disable,
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.size24,
                      vertical: Dimens.size12,
                    ),
                    bgColor: colorSubmit,
                  ),
                )
              else
                const SizedBox.shrink(),
            ],
          )
        ],
      ),
    );
  }
}
