import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({required this.startQuiz, super.key});
  final void Function(String screenName) startQuiz;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepOrangeAccent,
                Colors.white,
                Colors.white,
                Colors.green,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200.h,
                width: 150.w,
                child: Image.asset(
                  'assets/India.png',
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Do You Know Your Country?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.sp,
                ),
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                  onPressed: () {
                    startQuiz('question-screen');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1))),
                  child: Text(
                    "Let's Check...",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
