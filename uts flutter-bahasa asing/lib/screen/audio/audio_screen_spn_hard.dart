import 'package:flutter/material.dart';

class AudioScreenSpnHard extends StatefulWidget {
  const AudioScreenSpnHard({super.key});

  @override
  _AudioScreenSpnHardState createState() => _AudioScreenSpnHardState();
}

class _AudioScreenSpnHardState extends State<AudioScreenSpnHard> {
  final List<Map<String, String>> _verbs = [
    {
      'English': 'Además, aprender algo nuevo siempre es emocionante',
      'Bahasa': 'Selain itu, belajar hal baru selalu menarik',
    },
    {
      'English': 'Antes de salir, asegúrate de cerrar la puerta con llave',
      'Bahasa': 'Sebelum pergi, pastikan untuk mengunci pintunya',
    },
    {
      'English': 'Amaneció temprano y el sol brillaba en el horizonte',
      'Bahasa': 'Saat itu masih pagi dan matahari bersinar di cakrawala',
    },
    {
      'English': 'Adoro los días soleados',
      'Bahasa': 'Saya suka hari yang cerah',
    },
    {
      'English': 'Ayer visité un museo de arte con mi hermana',
      'Bahasa': 'Kemarin saya mengunjungi museum seni dengan kakak perempuan saya',
    },
    {
      'English': 'Asisto a conferencias para seguir aprendiendo',
      'Bahasa': 'Saya mengikuti konferensi untuk terus belajar',
    },
    {
      'English': 'Bueno, creo que es hora de irme',
      'Bahasa': 'Baiklah, saya rasa sudah waktunya untuk pergi',
    },
    {
      'English': 'Busqué en todas partes y no lo encontré',
      'Bahasa': 'Saya mencari di mana-mana tapi tidak menemukannya',
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