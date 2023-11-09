import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 25, 48, 63),
        foregroundColor: const Color.fromARGB(255, 252, 252, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
      ),
      child: StyledText.whiteLeft(
        answerText,
        14,
      ),
    );
  }
}
