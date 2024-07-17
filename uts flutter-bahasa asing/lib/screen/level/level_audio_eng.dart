import 'package:flutter/material.dart';
import 'package:uts/screen/audio/audio_coba.dart';
import 'package:uts/screen/audio/audio_screen_eng_ez.dart';
import 'package:uts/screen/audio/audio_screen_eng_med.dart';
import 'package:uts/screen/audio/audio_screen_eng_hard.dart';
import 'package:uts/widget/level-button.dart';
import 'package:uts/widget/next_button_card.dart';

class DifficultyPageAudioEng extends StatelessWidget {
  const DifficultyPageAudioEng({super.key});

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
                  MaterialPageRoute(builder: (context) => Aucoba()),
                );
              },
              label: 'Easy',
            ),
            const SizedBox(height: 5),
            LevelButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AudioScreenEngMed()),
                );
              },
              label: 'Medium',
            ),
            const SizedBox(height: 5),
            LevelButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AudioScreenEngHard()),
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
