import 'package:flutter/material.dart';

import 'package:fcg_adv_basics/answer_button.dart';
import 'package:fcg_adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map(
            (item) {
              return AnswerButton(answerText: item, onTap: () {});
            },
          )
        ],
      ),
    );
  }
}
