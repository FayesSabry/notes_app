import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff3B3B3B)),
        borderRadius: BorderRadius.circular(15),
      ),
      child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
    );
  }
}
