import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../style/style.dart';
import '../widget.dart';

class ConfirmDialog extends StatelessWidget {
  final String? title;
  final String? submitLabel;
  final String? content;
  final VoidCallback? onSubmit;
  final String? labelCancel;
  final VoidCallback? onCancel;
  final Icon? iconTitle;
  final Color? submitColor;

  const ConfirmDialog({
    Key? key,
    this.title,
    this.submitLabel,
    this.content,
    this.onSubmit,
    this.labelCancel,
    this.onCancel,
    this.iconTitle,
    this.submitColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BasePopupWidget(
      iconTitle: iconTitle,
      width: Dimens.widthConfirmDialog,
      title: title ?? '',
      labelSubmit: submitLabel,
      onSubmit: () {
        onSubmit?.call();
        Navigator.of(context).pop();
      },
      colorSubmit: submitColor ?? theme.primaryColor,
      // labelCancel: tr('no'),
      onCancel: onCancel,
      child: Padding(
        padding:
            const EdgeInsets.only(left: Dimens.size50, right: Dimens.size30),
        child: Text(
          content ?? '',
          style: theme.primaryTextTheme.titleSmall,
        ),
      ),
    );
  }
}
