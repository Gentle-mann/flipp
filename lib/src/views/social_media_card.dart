import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_configuration.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
    required this.icon,
    required this.press,
  });
  final String icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: size),
        padding: EdgeInsets.all(size),
        height: size * 4,
        width: size * 4,
        decoration: const BoxDecoration(
          //color: Color(0XFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
