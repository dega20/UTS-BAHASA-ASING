import 'package:cloud_firestore/cloud_firestore.dart';

class Score {
  String id;
  int value;
  DateTime timestamp;

  Score({required this.id, required this.value, required this.timestamp});

  factory Score.fromMap(Map<String, dynamic> data, String documentId) {
    return Score(
      id: documentId,
      value: data['value'],
      timestamp: (data['timestamp'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'value': value,
      'timestamp': timestamp,
    };
  }
}
