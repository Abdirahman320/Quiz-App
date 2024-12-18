import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzapp/Models/quiz_questions.dart';
import 'package:quizzapp/answer_Button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onselectAnswer});
  final void Function(String answer) onselectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswer) {
    setState(() {
      widget.onselectAnswer(selectedAnswer);
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = quizData[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251), fontSize: 24),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getShuffledAnswers().map((item) {
            return AnswerButton(
                answerText: item,
                onTap: () {
                  answerQuestion(item);
                });
          })
        ],
      ),
    );
  }
}
