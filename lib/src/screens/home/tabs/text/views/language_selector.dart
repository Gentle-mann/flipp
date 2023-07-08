import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../size_configuration.dart';
import '../../../../../theme/themes_barrel.dart';

class LanguageSelector extends StatefulWidget {
  const LanguageSelector({
    super.key,
    required this.language,
    this.isInput = true,
  });
  final String language;
  final bool isInput;

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  String? inputLanguage = 'English';
  String? outputLanguage = '';
  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;
    final List<String> languages = ['English', 'German', 'Italian', 'Chinese'];

    return Container(
      padding: EdgeInsets.all(size),
      width: SizeConfiguration.screenWidth * 0.35,
      height: size * 5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(size),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: widget.isInput ? inputLanguage : outputLanguage,
          isExpanded: true,
          items: languages.map((item) => buildItemMenu(item)).toList(),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: kPrimaryColor,
          ),
          onChanged: (language) {
            widget.isInput
                ? setState(() {
                    inputLanguage = language;
                  })
                : setState(() {
                    outputLanguage = language;
                  });
          },
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildItemMenu(String language) {
    return DropdownMenuItem(
      value: language,
      child: Text(
        language,
        style: LightTextTheme.lightTextTheme.displaySmall,
      ),
    );
  }
}
