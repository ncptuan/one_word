import 'package:flutter/material.dart';

import '../../style/style.dart';

class CardAuthenticationWidget extends StatelessWidget {
  final Widget widget;

  const CardAuthenticationWidget({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Dimens.size0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.size16),
      ),
      color: MyColors.whiteColor,
      child: widget,
    );
  }
}
