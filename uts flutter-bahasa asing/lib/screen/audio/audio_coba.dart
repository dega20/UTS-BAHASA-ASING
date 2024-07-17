import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:just_audio/just_audio.dart';
import 'package:uts/models/audio.dart';

class Aucoba extends StatelessWidget {
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio List'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('words').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          var words = snapshot.data!.docs.map((doc) => Word.fromFirestore(doc)).toList();
          return ListView.builder(
            itemCount: words.length,
            itemBuilder: (context, index) {
              var word = words[index];
              return ListTile(
                title: Text(word.word),
                trailing: IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () => _playAudio(word.audioUrl),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _playAudio(String url) async {
    try {
      await _audioPlayer.setUrl(url);
      _audioPlayer.play();
    } catch (e) {
      print('Error playing audio: $e');
    }
  }
}
