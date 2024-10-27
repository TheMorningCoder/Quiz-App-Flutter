import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_app/data/region_questions.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'dart:developer' as developer;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start-screen';
  List<String> chosenAnswers = [];
  int currentQuestionIndex = 0;

  void switchScreen(String screenName) {
    developer.log(screenName, name: 'Active Screen');
    setState(() {
      activeScreen = screenName;
    });
  }

  void saveAnswers(String answer) {
    developer.log("${chosenAnswers.length} ${regionQuestions.length}");
    if (chosenAnswers.length == regionQuestions.length) {
      setState(() {
        switchScreen('result-screen');
      });
      // chosenAnswers = [];
    }
    if (chosenAnswers.length < regionQuestions.length) {
      chosenAnswers.add(answer);
      developer.log(chosenAnswers.toString(), name: 'List of Answers');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            home: activeScreen == 'start-screen'
                ? StartScreen(
                    startQuiz: (activeScreen) {
                      switchScreen(activeScreen);
                    },
                  )
                : (activeScreen == 'question-screen'
                    ? QuestionsScreen(
                        saveAnswers: saveAnswers,
                      )
                    : ResultScreen(
                        chosenAnswers: chosenAnswers,
                      )),
          );
        });
  }
}
