import 'package:flutter/material.dart';

import '../../../constants.dart';

class TranslationActionIcon extends StatelessWidget {
  const TranslationActionIcon({
    super.key,
    required this.size,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;

  final double size;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: size * 2,
        color: kPrimaryColor,
      ),
    );
  }
}
