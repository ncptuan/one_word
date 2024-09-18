import '../../style/style.dart';
import 'package:flutter/material.dart';

class AppLogoImageWidget extends StatelessWidget {
  final double? width;
  final double? height;

  const AppLogoImageWidget({
    this.width = Dimens.size256,
    this.height = Dimens.size256,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/circle_farmers_market_logo.png',
      fit: BoxFit.fitWidth,
      width: width,
      height: height,
    );
  }
}
