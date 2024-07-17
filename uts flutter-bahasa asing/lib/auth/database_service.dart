import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uts/score/score.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addScore(String level, Score score) {
    return _db.collection('levels').doc(level).collection('scores').add(score.toMap());
  }

  Stream<List<Score>> getScores(String level) {
    return _db.collection('levels').doc(level).collection('scores').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Score.fromMap(doc.data(), doc.id)).toList();
    });
  }

  Future<void> updateScore(String level, Score score) {
    return _db.collection('levels').doc(level).collection('scores').doc(score.id).update(score.toMap());
  }

  Future<void> deleteScore(String level, String id) {
    return _db.collection('levels').doc(level).collection('scores').doc(id).delete();
  }
}
