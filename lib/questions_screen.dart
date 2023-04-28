import 'package:flutter/material.dart';

import 'package:fcg_adv_basics/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question...',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: 'Answer 1',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer 2',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer 3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
