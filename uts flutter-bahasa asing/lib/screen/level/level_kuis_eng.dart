// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uts/models/quiz_screen.dart';
import 'package:uts/screen/quiz/quiz_screen_eng_ez.dart';
import 'package:uts/screen/quiz/quiz_screen_eng_hard.dart';
import 'package:uts/screen/quiz/quiz_screen_eng_med.dart';
import 'package:uts/screen/Type/tipe_eng.dart';
import 'package:uts/widget/answer_kuis_button.dart';
import 'package:uts/widget/level-button.dart';
import 'package:uts/widget/next_button_card.dart';
import 'package:uts/screen/audio/audio_screen.dart';

class DifficultyPageEng extends StatelessWidget {
  const DifficultyPageEng({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilih Tingkat Kesulitan'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LevelButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
              },
              label: 'Easy',
            ),
            const SizedBox(height: 5),
            LevelButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreenEngMed()),
                );
              },
              label: 'Medium',
            ),
            const SizedBox(height: 5),
            LevelButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreenEngHard()),
                );
              },
              label: 'Hard',
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
