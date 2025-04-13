
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/constants.dart';

class CustomBottn extends StatelessWidget {
  const CustomBottn({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 1.sw,
        height: 55.h,
        decoration: BoxDecoration(
          color: kPriamaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 20.sp, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
