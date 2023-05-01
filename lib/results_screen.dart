import 'package:fcg_adv_basics/questions_summary.dart';
import 'package:flutter/material.dart';

import 'package:fcg_adv_basics/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    // final List<Map<String, Object>> summary = [];

    // for (var i = 0; i < chosenAnswers.length; i++) {
    //   summary.add({
    //     'question_index': i,
    //     'question': questions[i].text,
    //     'correct_answer': questions[i].answers[0],
    //     'user_answer': chosenAnswers[i],
    //   });
    // }

    // return summary;

    return List<int>.generate(chosenAnswers.length, (index) => index)
        .map((i) => ({
              'question_index': i,
              'question': questions[i].text,
              'correct_answer': questions[i].answers[0],
              'user_answer': chosenAnswers[i],
            }))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y questions correctly!'),
            const SizedBox(height: 30),
            QuestionsSummary(getSummaryData()),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz!'),
            )
          ],
        ),
      ),
    );
  }
}
