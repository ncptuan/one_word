import 'package:flutter/material.dart';

import '../../style/colors.dart';

class AddFloatingActionButton extends StatelessWidget {
  const AddFloatingActionButton({
    super.key,
    required this.press,
  });

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: MyColors.whiteColor,
      onPressed: press,
      child: Image.asset("assets/icon/add_icon.png"),
    );
  }
}
