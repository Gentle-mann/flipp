import 'package:flipp/src/tabs/text/views/views_barrel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

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
      //height: size * 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const InputLanguageSelector(
            language: 'German',
          ),
          Container(
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
          // const OutputLanguageSelector(
          //   language: 'English',
          // ),
        ],
      ),
    );
  }
}
