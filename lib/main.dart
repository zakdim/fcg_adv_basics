import 'package:flutter/material.dart';

import 'package:fcg_adv_basics/start_screen.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: StartScreen(),
      ),
    );
  }
}
