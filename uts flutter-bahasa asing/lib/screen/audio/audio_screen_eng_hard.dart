import 'package:flutter/material.dart';

class AudioScreenEngHard extends StatefulWidget {
  const AudioScreenEngHard({super.key});

  @override
  _AudioScreenEngHardState createState() => _AudioScreenEngHardState();
}

class _AudioScreenEngHardState extends State<AudioScreenEngHard> {
  final List<Map<String, String>> _verbs = [
    {
      'English': 'Actions speak louder than words',
      'Bahasa': 'Tindakan berbicara lebih keras daripada kata-kata',
    },
    {
      'English': 'A journey of a thousand miles begins with a single step',
      'Bahasa': 'Perjalanan seribu mil dimulai dengan satu langkah',
    },
    {
      'English': 'All good things must come to an end',
      'Bahasa': 'Semua hal yang baik harus berakhir',
    },
    {
      'English': 'All is fair in love and war',
      'Bahasa': 'Semua adil dalam cinta dan perang',
    },
    {
      'English': 'All that glitters is not gold',
      'Bahasa': 'Semua yang berkilau bukanlah emas',
    },
    {
      'English': 'A picture is worth a thousand words',
      'Bahasa': 'Sebuah gambar memiliki nilai ribuan kata',
    },
    {
      'English': 'Apples are always a tasty treat',
      'Bahasa': 'Apel selalu merupakan makanan yang lezat',
    },
    {
      'English': 'At a zoo, Adi admired an monkey',
      'Bahasa': 'Di kebun binatang, Adi mengagumi seekor monyet',
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