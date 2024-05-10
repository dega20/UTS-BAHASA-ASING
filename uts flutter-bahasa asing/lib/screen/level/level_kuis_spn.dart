// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uts/screen/quiz/quiz_screen_spn_ez.dart';
import 'package:uts/screen/Type/tipe_spn.dart';
import 'package:uts/screen/quiz/quiz_screen_spn_hard.dart';
import 'package:uts/screen/quiz/quiz_screen_spn_med.dart';
import 'package:uts/widget/next_button_card.dart';
import 'package:uts/screen/audio_screen.dart';

class DifficultyPageSpn extends StatelessWidget {
  const DifficultyPageSpn({super.key});

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
            RectangularButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreenSpnEz()),
                );
              },
              label: 'Easy',
            ),
            const SizedBox(height: 5),
            RectangularButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreenSpnEz()),
                );
              },
              label: 'Medium',
            ),
            const SizedBox(height: 5),
            RectangularButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreenSpnEz()),
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
