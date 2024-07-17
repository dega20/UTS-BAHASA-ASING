import 'package:flutter/material.dart';
import 'package:uts/widget/answer_kuis_button.dart';
import 'question_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'score_list_screen.dart'; // Import layar daftar skor

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Question> _questions = [
    Question(
      questionText: "1. Which word is the synonym of 'happy'?",
      answers: ["a) Sad", "b) Angry", "c) joyful", "d) Tired"],
      correctAnswerIndex: 2,
    ),
     Question(
      questionText: "2. What is the capital city of France?",
      answers: ["a) Berlin", "b) Madrid", "c) Rome", "d) Paris"],
      correctAnswerIndex: 3,
    ),
    // Tambahkan pertanyaan lain di sini
  ];

  int _currentQuestionIndex = 0;
  int _score = 0;

  void _submitAnswer(int answerIndex) {
    if (answerIndex == _questions[_currentQuestionIndex].correctAnswerIndex) {
      _score++;
    }

    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      _saveScore();
    }
  }

  void _saveScore() async {
    await FirebaseFirestore.instance.collection('scores').add({
      'score': _score,
      'date': DateTime.now(),
    });

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Kuis Selesai!'),
        content: Text('Skor Anda: $_score'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                _currentQuestionIndex = 0;
                _score = 0;
              });
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kuis'),
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScoreListScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              _questions[_currentQuestionIndex].questionText,
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            ..._questions[_currentQuestionIndex].answers.map((answer) {
              int answerIndex = _questions[_currentQuestionIndex].answers.indexOf(answer);
              return Column(
                children: [
                  KuisButton(
                    onPressed: () => _submitAnswer(answerIndex),
                    child: (answer),
                  ),
                  SizedBox(height: 8.0), 
                ],
              );
            }).toList(),
            SizedBox(height: 32.0)
          ],
        ),
      ),
    );
  }
}
