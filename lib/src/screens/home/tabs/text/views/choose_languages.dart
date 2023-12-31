import 'package:flipp/src/screens/home/tabs/text/views/views_barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants.dart';

class ChooseLanguages extends StatelessWidget {
  const ChooseLanguages({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LanguageSelector(
            language: '',
          ),
          Container(
            height: size * 4,
            width: size * 4,
            padding: EdgeInsets.all(size * 0.8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColor,
            ),
            child: SvgPicture.asset(
              'assets/icons/convert.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
          const LanguageSelector(
            language: '',
          ),
        ],
      ),
    );
  }
}
