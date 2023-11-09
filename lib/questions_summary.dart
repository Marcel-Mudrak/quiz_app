import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  Color checkColor(Map<String, Object> data) {
    if (data['user_answer'] == data['correct_answer']) {
      return const Color.fromARGB(255, 76, 224, 210);
    } else {
      return const Color.fromARGB(255, 0, 126, 167);
    }
  }

  Icon checkTick(Map<String, Object> data) {
    if (data['user_answer'] == data['correct_answer']) {
      return const Icon(
        Icons.check,
        color: Color.fromARGB(255, 252, 252, 255),
      );
    } else {
      return const Icon(
        Icons.close,
        color: Color.fromARGB(255, 252, 252, 255),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundColor: checkColor(data),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          StyledText.whiteLeft(
                            data['question'] as String,
                            18,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          StyledText.lightBlue(
                            TextAlign.left,
                            'Your answer: ${data['user_answer']}',
                            15,
                          ),
                          StyledText.turquoise(
                            TextAlign.left,
                            'Correct answer: ${data['correct_answer']}',
                            15,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                  checkTick(data),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
