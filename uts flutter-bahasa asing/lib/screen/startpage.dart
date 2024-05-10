import 'package:flutter/material.dart';
import 'package:uts/screen/Type/tipe_spn.dart';
// ignore: unused_import
import 'package:uts/screen/Type/tipe_eng.dart';
import 'package:uts/widget/next_button_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Bahasa Asing'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.chat),
          onPressed: () {
            // Add your code here to handle the icon button press
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pilih Bahasa yang akan dipelajari',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            RectangularButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LearningTypePageEng()),
                );
              },
              label: 'Bahasa Inggris',
            ),
            const SizedBox(height: 10),
            RectangularButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LearningTypePageSpn()),
                );
              },
              label: 'Bahasa Spanyol',
            ),
            const SizedBox(height: 10),
            RectangularButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LearningTypePageSpn()),
                );
              },
              label: 'Bahasa Korea',
            ),
          ],
        ),
      ),
    );
  }
}
