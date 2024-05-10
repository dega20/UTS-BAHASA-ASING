// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uts/screen/level/level_kuis_eng.dart';
import 'package:uts/screen/level/level_kuis_spn.dart';
import 'package:uts/screen/level/level_audio_spn.dart';
import 'package:uts/widget/next_button_card.dart';
import 'package:uts/screen/audio_screen.dart';

class LearningTypePageSpn extends StatelessWidget {
  const LearningTypePageSpn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pilih Tipe Pembelajaran'),
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
                  MaterialPageRoute(builder: (context) => DifficultyPageSpn()),
                );
              },
              label: 'Kuis',
            ),
            const SizedBox(height: 10),
            RectangularButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DifficultyPageAudioSpn()),
                );
              },
              label: 'Audio',
            ),
          ],
        ),
      ),
    );
  }
}