import 'package:flutter/material.dart';

class VocabularyList extends StatelessWidget {
  const VocabularyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kosakata Bahasa Inggris'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 26,
        itemBuilder: (context, index) {
          String alphabet = String.fromCharCode('A'.codeUnitAt(0) + index);
          return ListTile(
            title: Text(alphabet),
            subtitle: Text('List kosakata yang dimulai dari huruf $alphabet'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VocabularyListDetail(alphabet: alphabet)),
              );
            },
          );
        },
      ),
    );
  }
}

class VocabularyListDetail extends StatelessWidget {
  const VocabularyListDetail({super.key, required this.alphabet});

  final String alphabet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kosakata Bahasa Inggris - $alphabet'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: getVocabularyItemCount(alphabet),
        itemBuilder: (context, index) {
          String vocabularyItem = getVocabularyItem(alphabet, index);
          String vocabularyDef = getVocabularyDefinition(alphabet, index);
          return ListTile(
            title: Text(vocabularyItem),
            subtitle: Text(vocabularyDef),
          );
        },
      ),
    );
  }

  int getVocabularyItemCount(String alphabet) {
    switch (alphabet) {
      case 'A':
        return 10;
      case 'B':
        return 1;
      case 'C':
        return 1;
      //...
      default:
        return 0;
    }
  }

  String getVocabularyItem(String alphabet, int index) {
    switch (alphabet) {
      case 'A':
        List<String> vocabularyItems = ['Apple', 'Ant', 'Arrow', 'Avocado', 'Artist', 'Animal', 'Author', 'Adventure', 'Axe', 'Award'];
        return vocabularyItems[index];
      case 'B':
        List<String> vocabularyItems = ['Boy'];
        return vocabularyItems[index];
      case 'C':
        List<String> vocabularyItems = ['Cat'];
        return vocabularyItems[index];
      //...
      default:
        return '';
    }
  }

  String getVocabularyDefinition(String alphabet, int index) {
    switch (alphabet) {
      case 'A':
        List<String> vocabularyDefs = ['Apel', 'Semut', 'Panah', 'Alpukat', 'Seniman', 'Hewan', 'Penulis', 'Petualangan', 'Kapak', 'Penghargaan'];
        return vocabularyDefs[index];
      case 'B':
        List<String> vocabularyDefs = ['Anak laki-laki'];
        return vocabularyDefs[index];
      case 'C':
        List<String> vocabularyDefs = ['Kucing'];
        return vocabularyDefs[index];
      //...
      default:
        return '';
    }
  }
}