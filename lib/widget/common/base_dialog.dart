import 'package:flutter/material.dart';
import 'package:one_word/extensions/extension.dart';

import '../../style/style.dart';
import 'common.dart';

class BaseDialog {
  BaseDialog._();

  static bool isOpening = false;

  static void show({
    required BuildContext context,
    required String title,
    required String content,
    String? nameAction,
    bool barrierDismissible = false,
    VoidCallback? action,
    bool isDisplayConfirmButton = true,
    bool isDisplayCancelButton = true,
  }) {
    if (isOpening) return;

    isOpening = true;
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (_) {
        final theme = Theme.of(context);
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.size16),
          ), //this right here
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: Dimens.size48,
              horizontal: Dimens.size44,
            ),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(Dimens.size16),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: theme.textTheme.textTitleLarge(),
                  maxLines: Dimens.maxLine3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Dimens.size8),
                Text(
                  content,
                  style: theme.textTheme.buttonTextStyle(),
                  maxLines: Dimens.maxLine3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                content.isNotNullOrEmpty
                    ? const SizedBox(height: Dimens.size16)
                    : const SizedBox(height: Dimens.size0),
                Row(
                  children: [
                    isDisplayCancelButton
                        ? Expanded(
                            child: BaseButton(
                              bgColor: theme.buttonTheme.colorScheme?.primary,
                              action: () {
                                Navigator.of(context).pop();
                              },
                              content: 'Cancel',
                              hasShadow: false,
                            ),
                          )
                        : const SizedBox(),
                    isDisplayConfirmButton
                        ? const SizedBox(width: Dimens.size16)
                        : const SizedBox(width: Dimens.size0),
                    isDisplayConfirmButton
                        ? Expanded(
                            child: BaseButton(
                              bgColor: theme.buttonTheme.colorScheme?.primary,
                              action:
                                  action ?? () => Navigator.of(context).pop(),
                              content: nameAction ?? '',
                              textStyle: theme.primaryTextTheme.titleLarge,
                              hasShadow: false,
                            ),
                          )
                        : const SizedBox(),
                  ],
                )
              ],
            ),
          ),
        );
      },
    ).then((_) => isOpening = false);
  }
}
