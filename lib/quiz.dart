import 'package:flutter/material.dart';
import 'package:quizzapp/Models/quiz_questions.dart';
import 'package:quizzapp/questions.dart';
import 'package:quizzapp/resultScreen.dart';
import 'package:quizzapp/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => QuizState();
}

class QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  void choosedAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == quizData.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: activeScreen == 'start-screen'
                ? StartScreen(switchScreen)
                : activeScreen == 'questions-screen'
                    ? QuestionsScreen(
                        onselectAnswer: choosedAnswer,
                      )
                    : Resultscreen(
                        chosenAnswers: selectedAnswers,
                      ),
          ),
        ),
      ),
    );
  }
}
