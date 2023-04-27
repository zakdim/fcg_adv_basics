import 'package:fcg_adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';

import 'package:fcg_adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var quizStarted = false;

  void onStartQuiz() {
    setState(() {
      quizStarted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 78, 13, 151),
                  Color.fromARGB(255, 107, 15, 168),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: quizStarted
                ? const QuestionsScreen()
                : StartScreen(onStartQuiz)),
      ),
    );
  }
}