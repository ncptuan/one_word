import 'package:flutter/material.dart';

class HaveAccountOrNot extends StatelessWidget {
  final String title;
  final String textOnPress;
  final VoidCallback onPress;

  const HaveAccountOrNot({
    super.key,
    required this.title,
    required this.textOnPress,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: theme.primaryTextTheme.titleMedium,
        ),
        GestureDetector(
          onTap: onPress,
          child: Text(
            textOnPress,
            style: theme.primaryTextTheme.bodyMedium,
          ),
        )
      ],
    );
  }
}
