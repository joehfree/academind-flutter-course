import 'package:advanced_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    //setstate causes Flutter to re-execute the build method on the widget so the UI will update
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 29, 69, 163),
                Color.fromARGB(255, 49, 118, 208),
              ],
            ),
          ),
          child:
              activeScreen == 'start-screen'
                  ? StartScreen(switchScreen)
                  : const QuestionsScreen(),
        ),
      ),
    );
  }
}
