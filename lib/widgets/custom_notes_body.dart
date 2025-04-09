import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class CustomNotesBody extends StatelessWidget {
  const CustomNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 47.h),
      child: Column(
        children: [
          const CustomAppBar(),
          SizedBox(height: 50.h),
          const NonteItem(),
        ],
      ),
    );
  }
}

class NonteItem extends StatelessWidget {
  const NonteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 24.h,
            bottom: 24.h,
            left: 16.w,
            right: 16.w,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffffcc80),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'My first note',
                  style: GoogleFonts.poppins(
                    fontSize: 26.sp,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  'Bulid Your career as a flutter developer',
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    color: Colors.black.withValues(alpha: 0.5),
                  ),
                ),
              ),

              Text(
                'May/15/2023',
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0.w,
          top: 0.h,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete, color: Colors.black, size: 30.sp),
          ),
        ),
      ],
    );
  }
}
