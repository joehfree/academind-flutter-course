import 'package:flutter/material.dart';
import 'package:advanced_basics/data/questions.dart';
import 'package:advanced_basics/questions_summary/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestartQuiz,
  });

  final List<String> chosenAnswers;
  final void Function() onRestartQuiz;

  //a map is simply a key/value pair, so a list of them is like a dictionary
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    //loop through chosen answers and map them to our summary data
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions =
        summaryData.where((data) {
          return data['user_answer'] == data['correct_answer'];
        }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: GoogleFonts.lato(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData),
            const SizedBox(height: 30),
            TextButton(onPressed: onRestartQuiz, child: Text('Restart Quiz')),
          ],
        ),
      ),
    );
  }
}
