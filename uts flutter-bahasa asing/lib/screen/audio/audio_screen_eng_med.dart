import 'package:flutter/material.dart';

class AudioScreenEngMed extends StatefulWidget {
  const AudioScreenEngMed({super.key});

  @override
  _AudioScreenEngMedState createState() => _AudioScreenEngMedState();
}

class _AudioScreenEngMedState extends State<AudioScreenEngMed> {
  final List<Map<String, String>> _verbs = [
    {
      'English': 'A cat chased the dog',
      'Bahasa': 'Seekor kucing mengejar anjing',
    },
    {
      'English': 'A dog chased the cat',
      'Bahasa': 'Seekor anjing mengejar kucing',
    },
    {
      'English': 'A fox is quick and sly',
      'Bahasa': 'Seekor rubah cepat dan licik',
    },
    {
      'English': 'A little rabbit',
      'Bahasa': 'Seekor kelinci kecil',
    },
    {
      'English': 'Ants are small insects',
      'Bahasa': 'Semut adalah serangga kecil',
    },
    {
      'English': 'A new car',
      'Bahasa': 'Sebuah mobil baru',
    },
    {
      'English': 'Apple is a fruit',
      'Bahasa': 'Apel adalah buah',
    },
    {
      'English': 'Apples grow on trees',
      'Bahasa': 'Apel tumbuh di pohon',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English Verbs'),
      ),
      body: ListView.builder(
        itemCount: _verbs.length,
        itemBuilder: (context, index) {
          final verb = _verbs[index];
          return Column(
            children: [
              Divider(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            verb['English']!,
                            style: const TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            verb['Bahasa']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Add your button onPressed logic here
                      },
                      icon: const Icon(Icons.volume_up),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}