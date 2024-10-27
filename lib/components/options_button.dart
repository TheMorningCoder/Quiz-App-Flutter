import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionsButton extends StatelessWidget {
  const OptionsButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });
  final String buttonText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 25.w),
          backgroundColor: const Color.fromARGB(220, 184, 77, 255),
          foregroundColor: Colors.white,
          elevation: 6,
          shadowColor: Colors.blueGrey,
        ),
        child: Text(buttonText,
            style: GoogleFonts.aBeeZee(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            )),
      ),
    );
  }
}
