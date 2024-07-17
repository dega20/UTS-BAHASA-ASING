import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ScoreListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Skor'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('scores').orderBy('date', descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('Tidak ada skor.'));
          }
          final scores = snapshot.data!.docs;
          return ListView.builder(
            itemCount: scores.length,
            itemBuilder: (context, index) {
              var scoreData = scores[index];
              var score = scoreData['score'];
              var date = scoreData['date'].toDate();
              return ListTile(
                title: Text('Skor: $score'),
                subtitle: Text('Tanggal: ${date.toString()}'),
              );
            },
          );
        },
      ),
    );
  }
}
