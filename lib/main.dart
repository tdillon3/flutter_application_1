import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'flashcards_provider.dart';
import 'flashcard_screen.dart';
import 'add_flashcard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FlashcardsProvider(),
      child: MaterialApp(
        title: 'Flashcard App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => FlashcardScreen(),
          '/add': (context) => AddFlashcardScreen(),
        },
      ),
    );
  }
}