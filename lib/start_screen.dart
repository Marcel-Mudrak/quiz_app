import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 252, 252, 255),
            ),
            const SizedBox(height: 80),
            const StyledText.white('Check your flutter knowledge!', 24),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: startQuiz,
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 252, 252, 255),
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const StyledText.white('Start Quiz', 20),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
