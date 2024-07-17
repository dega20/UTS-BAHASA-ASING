import 'package:flutter/material.dart';
import 'package:uts/auth/database_service.dart';
import 'score.dart';

class ListScore extends StatelessWidget {
  final DatabaseService dbService = DatabaseService();
  final String level = "level1"; // contoh untuk level1

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Scores'),
      ),
      body: StreamBuilder<List<Score>>(
        stream: dbService.getScores(level),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          List<Score> scores = snapshot.data!;

          return ListView.builder(
            itemCount: scores.length,
            itemBuilder: (context, index) {
              Score score = scores[index];
              return ListTile(
                title: Text('Score: ${score.value}'),
                subtitle: Text('Date: ${score.timestamp}'),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => dbService.deleteScore(level, score.id),
                ),
                onTap: () {
                  // Implement edit score functionality here
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement add score functionality here
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
