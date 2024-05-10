// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uts/screen/Type/tipe_eng.dart';

class AudioScreenEngEz extends StatefulWidget {
  const AudioScreenEngEz({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AudioScreenEngEz> {
  final List<Map<String, String>> _verbs = [
    {'English': '\t accept', 'Bahasa': ' menerima'},
    {'English': '\t add', 'Bahasa': ' menambahkan'},
    {'English': '\t agree', 'Bahasa': ' menyetujui'},
    {'English': '\t allow', 'Bahasa': ' mengizinkan'},
    {'English': '\t announce', 'Bahasa': ' mengumumkan'},
    {'English': '\t annoy', 'Bahasa': ' mengganggu'},
    {'English': '\t answer', 'Bahasa': ' manjawab'},
    {'English': '\t apologize', 'Bahasa': ' meminta maaf'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English Verbs'),
      ),
      body: ListView.builder(
        itemCount: _verbs.length,
        itemBuilder: (context, index) {
          final verb = _verbs[index];
          // ignore: unused_local_variable
          final number = index + 1;
          return Column(
            children: [
              Divider(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(verb['English']!.split('\t')[1]),
                      subtitle: Text(verb['Bahasa']!),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      // Add your button onPressed logic here
                    },
                    child: Icon(Icons.volume_up),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
