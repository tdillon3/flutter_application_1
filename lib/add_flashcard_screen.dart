import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'flashcards_provider.dart';

class AddFlashcardScreen extends StatelessWidget {
  final questionController = TextEditingController();
  final answerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Flashcard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: questionController,
              decoration: InputDecoration(labelText: 'Question'),
            ),
            TextField(
              controller: answerController,
              decoration: InputDecoration(labelText: 'Answer'),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<FlashcardsProvider>(context, listen: false)
                    .addFlashcard(
                        questionController.text, answerController.text);
                Navigator.pop(context);
              },
              child: Text('Add Flashcard'),
            ),
          ],
        ),
      ),
    );
  }
}