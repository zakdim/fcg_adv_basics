import 'package:flutter/material.dart';

class QuizSplash extends StatelessWidget {
  const QuizSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 300,
          child: Image.asset('assets/images/quiz-logo.png'),
        ),
        const SizedBox(
          height: 60,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 175, 155, 209),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text(
            'Start Quiz',
            style: TextStyle(
              color: Color.fromARGB(255, 175, 155, 209),
            ),
          ),
        ),
      ],
    );
  }
}
