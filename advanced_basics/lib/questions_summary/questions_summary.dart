import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//this will be one list item on the restults screen
class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Row(
                  children: [
                    Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            data['question'] as String,
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            data['user_answer'] as String,
                            style: GoogleFonts.lato(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Text(data['correct_answer'] as String),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
