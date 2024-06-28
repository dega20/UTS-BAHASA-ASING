import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

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
      'Audio': 'assets/sound/spiderman-meme-song.mp3',
    },
    {
      'Spain': 'Agua',
      'Bahasa': 'Air',
      'Audio': 'assets/sound/agua.mp3',
    },
    {
      'Spain': 'Ahora',
      'Bahasa': 'Sekarang',
      'Audio': 'assets/sound/ahora.mp3',
    },
    {
      'Spain': 'Alto',
      'Bahasa': 'Tinggi',
      'Audio': 'assets/sound/alto.mp3',
    },
    {
      'Spain': 'Amigo',
      'Bahasa': 'Teman',
      'Audio': 'assets/sound/amigo.mp3',
    },
    {
      'Spain': 'Amor',
      'Bahasa': 'Cinta',
      'Audio': 'assets/sound/amor.mp3',
    },
    {
      'Spain': 'Aprender',
      'Bahasa': 'Belajar',
      'Audio': 'assets/sound/aprender.mp3',
    },
    {
      'Spain': 'Ayudar',
      'Bahasa': 'Membantu',
      'Audio': 'assets/sound/ayudar.mp3',
    },
  ];

  final AudioPlayer _audioPlayer = AudioPlayer();

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
                      onPressed: () async {
                        await _audioPlayer.setAsset(verb['Audio']!);
                        _audioPlayer.play();
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