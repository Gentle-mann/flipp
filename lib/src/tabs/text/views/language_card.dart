import 'package:flipp/src/provider/flipp_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../size_configuration.dart';
import '../../../theme/themes_barrel.dart';

class InputLanguageSelector extends StatefulWidget {
  const InputLanguageSelector({
    super.key,
    required this.language,
  });
  final String language;

  @override
  State<InputLanguageSelector> createState() => _InputLanguageSelectorState();
}

class _InputLanguageSelectorState extends State<InputLanguageSelector> {
  String? dropValue;
  @override
  Widget build(BuildContext context) {
    final size = SizeConfiguration.defaultSize;

    return Container(
      //width: SizeConfiguration.screenWidth * 0.35,
      height: size * 5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(size),
      ),
      child: DropdownButton<String>(
        value: dropValue,
        items: Languages.languages.map((item) => buildItemMenu(item)).toList(),
        icon: const Icon(
          Icons.arrow_drop_down,
          color: kPrimaryColor,
        ),
        onChanged: (language) {
          setState(() {
            dropValue = language;
          });
        },
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
