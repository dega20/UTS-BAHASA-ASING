import 'package:flutter/material.dart';

class AudioScreenSpnEz extends StatefulWidget {
  const AudioScreenSpnEz({super.key});

  @override
  _AudioScreenSpnEzState createState() => _AudioScreenSpnEzState();
}

class _AudioScreenSpnEzState extends State<AudioScreenSpnEz> {
  final List<Map<String, String>> _verbs = [
    {
      'Spain': 'Abrir',
      'Bahasa': 'Membuka',
    },
    {
      'Spain': 'Agua',
      'Bahasa': 'Air',
    },
    {
      'Spain': 'Ahora',
      'Bahasa': 'Sekarang',
    },
    {
      'Spain': 'Alto',
      'Bahasa': 'Tinggi',
    },
    {
      'Spain': 'Amigo',
      'Bahasa': 'Teman',
    },
    {
      'Spain': 'Amor',
      'Bahasa': 'Cinta',
    },
    {
      'Spain': 'Aprender',
      'Bahasa': 'Belajar',
    },
    {
      'Spain': 'Ayudar',
      'Bahasa': 'Membantu',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('lengua española'),
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
                            verb['Spain']!,
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