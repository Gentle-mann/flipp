import 'package:flutter/material.dart';

import '../../../../../theme/themes_barrel.dart';
import 'views_barrel.dart';

class TranslationInput extends StatefulWidget {
  const TranslationInput({
    super.key,
    required this.height,
    required this.size,
  });

  final double height;
  final double size;

  @override
  State<TranslationInput> createState() => _TranslationInputState();
}

class _TranslationInputState extends State<TranslationInput> {
  final TextEditingController _inputController = TextEditingController();

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.size * 2),
      child: Container(
        height: widget.height * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.size * 2.5),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                controller: _inputController,
                expands: true,
                maxLines: null,
                style: LightTextTheme.lightTextTheme.displaySmall,
                decoration: const InputDecoration(
                  hintText: 'Enter the text you want to translate',
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            const TranslationActionRow(),
          ],
        ),
      ),
    );
  }
}
