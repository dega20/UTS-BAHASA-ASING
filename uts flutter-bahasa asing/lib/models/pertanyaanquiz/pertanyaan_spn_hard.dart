import 'package:uts/models/pertanyaan.dart';

const List<Question> questions = [
  Question(
    question: '1. Mana kalimat yang menggunakan subjek yang salah?',
    correctAnswerIndex: 2,
    options: [
      'a) Él habla español.',
      'b) Tú estudias mucho.',
      'c) Nosotros ir a la escuela.',
      'd) Ellas trabajan en la oficina.',
    ],
  ),
  Question(
    question:
        '2. Identifikasi kata kerja yang benar dalam bentuk subjuntivo dalam kalimat ini: "Espero que ella ______ (venir) mañana."',
    correctAnswerIndex: 3,
    options: [
      'a) viene',
      'b) vendrá',
      'c) ven',
      'd) venga',
    ],
  ),
];
