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
  // we will have a null activeScreen at first but will set it at the
  //initState lifecycle hook called by Flutter.
  Widget? activeScreen;

  //override the initState method provided by State class.  This fires once after
  //the object is instantiated.  Here we can reference the switchScreen argument
  //since it will be set by the time initState is called by Flutter.
  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    //we need to make sure the parent class executes initState as well.
    super.initState();
  }

  void switchScreen() {
    //setstate causes Flutter to re-execute the build method on the widget so the UI will update
    setState(() {
      activeScreen = QuestionsScreen();
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
          child: activeScreen,
        ),
      ),
    );
  }
}
