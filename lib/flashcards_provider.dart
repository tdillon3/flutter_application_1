import 'package:flutter/foundation.dart';
import 'flashcard_model.dart';

class FlashcardsProvider with ChangeNotifier {
  List<Flashcard> _flashcards = [];

  List<Flashcard> get flashcards => _flashcards;

  void addFlashcard(String question, String answer) {
    _flashcards.add(Flashcard(question: question, answer: answer));
    notifyListeners();
  }
}