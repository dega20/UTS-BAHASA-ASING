import 'package:flutter/material.dart';
import 'package:uts/screen/audio/audio_screen_spn_ez.dart';
import 'package:uts/screen/audio/audio_screen_spn_med.dart';
import 'package:uts/screen/audio/audio_screen_spn_hard.dart';
import 'package:uts/widget/next_button_card.dart';

class DifficultyPageAudioSpn extends StatelessWidget {
  const DifficultyPageAudioSpn({super.key});

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
                  MaterialPageRoute(builder: (context) => AudioScreenSpnEz()),
                );
              },
              label: 'Easy',
            ),
            const SizedBox(height: 5),
            RectangularButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AudioScreenSpnMed()),
                );
              },
              label: 'Medium',
            ),
            const SizedBox(height: 5),
            RectangularButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AudioScreenSpnHard()),
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
