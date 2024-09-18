
import 'package:flutter/material.dart';

import '../../style/style.dart';

class TransparentButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final EdgeInsets padding;

  const TransparentButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: Dimens.size30,
      padding: padding,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: onPressed,
      child: child,
    );
  }
}
