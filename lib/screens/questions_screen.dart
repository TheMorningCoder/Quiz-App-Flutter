import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/components/options_button.dart';
import 'package:quiz_app/data/region_questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({super.key, required this.saveAnswers});
  final void Function(String) saveAnswers;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void goToNextQuestion() {
    if (currentQuestionIndex < regionQuestions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = regionQuestions[currentQuestionIndex];
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.indigo,
              Colors.indigoAccent,
              Colors.lightBlue,
              Colors.lightBlueAccent,
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.question,
                style: GoogleFonts.lato(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15.h),
              ...currentQuestion.getShuffledOptions().map(
                (String buttonText) {
                  return OptionsButton(
                    buttonText: buttonText,
                    onTap: () {
                      goToNextQuestion();
                      widget.saveAnswers(buttonText);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
