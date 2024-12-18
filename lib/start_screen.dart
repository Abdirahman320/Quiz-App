import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quizlogo.png",
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 60,
        ),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
              shape: const RoundedRectangleBorder(),
              foregroundColor: Colors.white),
          onPressed: startQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text("Start Quiz"),
        )
      ],
    );
  }
}