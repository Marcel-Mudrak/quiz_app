import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/styled_text.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
    this.startScreen,
    this.quizScreen, {
    required this.chosenAnswers,
    super.key,
  });

  final List<String> chosenAnswers;

  final void Function() startScreen;
  final void Function() quizScreen;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();

    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            StyledText.whiteHeader(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              28,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(
              summaryData,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: quizScreen,
              icon: const Icon(Icons.replay),
              label: const StyledText.white('One more time...', 18),
            ),
            ElevatedButton.icon(
              onPressed: startScreen,
              icon: const Icon(Icons.home),
              label: const StyledText.white('Go home', 18),
            ),
          ],
        ),
      ),
    );
  }
}
