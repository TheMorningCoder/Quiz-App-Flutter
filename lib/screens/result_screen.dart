import 'package:flutter/material.dart';
import 'package:quiz_app/data/region_questions.dart';
import 'package:quiz_app/models/quiz_result.dart';
import 'package:quiz_app/screens/quiz_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
  });
  final List<String> chosenAnswers;

  List<QuizResult> createQuizResult() {
    List<QuizResult> quizResultList = [];
    for (int i = 0; i < regionQuestions.length; i++) {
      quizResultList.add(
        QuizResult(
          questionIndex: i + 1,
          question: regionQuestions[i].question,
          correctOption: regionQuestions[i].options[0],
          selectedOption: chosenAnswers[i],
        ),
      );
    }
    return quizResultList;
  }

  @override
  Widget build(BuildContext context) {
    //List<QuizResult> xyz = createQuizResult();
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.greenAccent,
      body: QuizSummary(quizResultList: createQuizResult()),
    ));
  }
}
