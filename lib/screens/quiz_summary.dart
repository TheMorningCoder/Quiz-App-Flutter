import 'package:flutter/material.dart';
import 'package:quiz_app/models/quiz_result.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary({super.key, required this.quizResultList});
  final List<QuizResult> quizResultList;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: quizResultList.map((quizResultObject) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(quizResultObject.questionIndex.toString()),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(quizResultObject.question),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(quizResultObject.correctOption),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(quizResultObject.selectedOption),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(quizResultObject.selectedOption ==
                          quizResultObject.correctOption
                      ? 'true'
                      : 'false'),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
