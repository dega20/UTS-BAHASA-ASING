import 'package:flutter/material.dart';

class AudioScreenSpnMed extends StatefulWidget {
  const AudioScreenSpnMed({super.key});

  @override
  _AudioScreenSpnMedState createState() => _AudioScreenSpnMedState();
}

class _AudioScreenSpnMedState extends State<AudioScreenSpnMed> {
  final List<Map<String, String>> _verbs = [
    {
      'English': 'Adaptarse a nuevos aprendizajes',
      'Bahasa': ' Beradaptasi dengan pembelajaran baru',
    },
    {
      'English': 'Adquirir conocimientos nuevos',
      'Bahasa': 'Memperoleh pengetahuan baru.',
    },
    {
      'English': 'Aprender es importante',
      'Bahasa': 'Belajar itu penting',
    },
    {
      'English': 'Analizar información importante',
      'Bahasa': 'Menganalisis informasi penting.',
    },
    {
      'English': 'Apreciar la educación',
      'Bahasa': 'Menghargai pendidikan',
    },
    {
      'English': 'Aprender de la experiencia.',
      'Bahasa': 'Belajar dari pengalaman',
    },
    {
      'English': 'Aprender de los demás',
      'Bahasa': 'Belajar dari orang lain',
    },
    {
      'English': 'Actuar con sabiduría',
      'Bahasa': 'Bertindak dengan bijak',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lengua española'),
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