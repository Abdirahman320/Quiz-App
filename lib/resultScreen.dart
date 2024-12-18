import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Resultscreen extends StatefulWidget {
  const Resultscreen({super.key, required this.chosenAnswers});
  final List<String> chosenAnswers;
  // List<Map<String, Object>> getSummayData() {
  //   final summary = [];

  //  // return summary;
  // }

  @override
  State<Resultscreen> createState() => _ResultscreenState();
}

class _ResultscreenState extends State<Resultscreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("You Answered X out of Y questions correctly!"),
        const SizedBox(
          height: 30,
        ),
        const Text("List of Answers and questions !"),
        TextButton(onPressed: () {}, child: const Text("Reset Quiz"))
      ],
    );
  }
}
