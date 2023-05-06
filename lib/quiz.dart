import 'package:flutter/material.dart';

import 'package:fcg_adv_basics/data/questions.dart';
import 'package:fcg_adv_basics/questions_screen.dart';
import 'package:fcg_adv_basics/results_screen.dart';
import 'package:fcg_adv_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  Widget? activeHomeButton;
  Widget? homeButton;

  @override
  void initState() {
    super.initState();
    homeButton = HomeButton(navigateHome);
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
        activeHomeButton = homeButton;
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
      activeHomeButton = null;
    });
  }

  void navigateHome() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'start-screen';
      activeHomeButton = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

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
          child: screenWidget,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: activeHomeButton,
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton(this.navigateHome, {super.key});

  final void Function() navigateHome;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color.fromRGBO(150, 88, 218, 1),
      onPressed: navigateHome,
      child: const Icon(
        Icons.home,
      ),
    );
  }
}
