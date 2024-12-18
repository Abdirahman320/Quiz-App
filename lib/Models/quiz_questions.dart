import 'dart:math';

class QuizQuestion {
  QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);

    shuffledList.shuffle();
    return shuffledList;
  }
}

List<QuizQuestion> quizData = [
  QuizQuestion(
    "What is the capital of France?",
    [
      "Paris",
      "London",
      "Berlin",
      "Madrid",
    ],
  ),
  QuizQuestion(
    "Which planet is known as the Red Planet?",
    [
      "Mars",
      "Venus",
      "Earth",
      "Jupiter",
    ],
  ),
  QuizQuestion(
    "What is the largest ocean on Earth?",
    [
      "Pacific Ocean",
      "Atlantic Ocean",
      "Indian Ocean",
      "Arctic Ocean",
    ],
  ),
  QuizQuestion(
    "Who wrote 'Romeo and Juliet'?",
    [
      "William Shakespeare",
      "Charles Dickens",
      "Leo Tolstoy",
      "Jane Austen",
    ],
  ),
  QuizQuestion(
    "What is the smallest prime number?",
    [
      "2",
      "1",
      "3",
      "0",
    ],
  ),
  QuizQuestion(
    "What is the chemical symbol for water?",
    [
      "H2O",
      "O2",
      "CO2",
      "NaCl",
    ],
  ),
  QuizQuestion(
    "Which programming language is primarily used for Android development?",
    [
      "Kotlin",
      "Swift",
      "Python",
      "C++",
    ],
  ),
];
