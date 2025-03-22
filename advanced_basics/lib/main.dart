import "package:flutter/material.dart";
import "package:advanced_basics/start_screen.dart";

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 29, 69, 163), Color.fromARGB(255, 49, 118, 208)],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}