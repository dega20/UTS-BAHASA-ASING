// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:uts/models/pertanyaanquiz/pertanyaan_eng_med.dart';
import '../quiz/quiz_screen_eng_med.dart';
import 'package:uts/screen/startpage.dart';
import 'package:uts/widget/next_button_card.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.score,
  });

  final int score;

  @override
  Widget build(BuildContext context) {
    String resultText = '';
    if (score == 0) {
      resultText = 'Read More';
    } else if (score == questions.length) {
      resultText = 'Keep up the good work!';
    } else {
      resultText = 'Good Job!';
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(height: 50), // Replace width with height
          const Text(
            'Your Score: ',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w500,
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 250,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  value: score / questions.length, // Divide by total questions
                  color: Colors.green,
                  backgroundColor: Colors.white,
                ),
              ),
              Column(
                children: [
                  Text(
                    score.toString(),
                    style: const TextStyle(fontSize: 80),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${(score / questions.length * 100).round()}%',
                    style: const TextStyle(fontSize: 25),
                  )
                ],
              ),
            ],
          ),
          RectangularButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const HomeScreen()),
              );
            },
            label: resultText, // Use the resultText variable here
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const HomeScreen()),
              );
            },
            child: Text('Home'),
          ),
        ],
      ),
    );
  }
}
