import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'flashcards_provider.dart';

class FlashcardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcard App'),
      ),
      body: Consumer<FlashcardsProvider>(
        builder: (context, flashcardsProvider, child) => ListView.builder(
          itemCount: flashcardsProvider.flashcards.length,
          itemBuilder: (context, index) {
            final flashcard = flashcardsProvider.flashcards[index];
            return ListTile(
              title: Text(flashcard.question),
              subtitle: Text(flashcard.answer),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/add'),
        child: Icon(Icons.add),
      ),
    );
  }
}