
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNoNotes extends StatelessWidget {
  const CustomNoNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/rafiki.png', width: 350.w, height: 286.73.h),
        SizedBox(height: 7.h),
        Text(
          'Create your first note !',
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
