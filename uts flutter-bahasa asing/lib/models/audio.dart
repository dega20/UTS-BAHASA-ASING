import 'package:cloud_firestore/cloud_firestore.dart';

class Word {
  final String word;
  final String audioUrl;

  Word({required this.word, required this.audioUrl});

  factory Word.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return Word(
      word: data['word'] ?? '',
      audioUrl: data['audioUrl'] ?? '',
    );
  }
}
