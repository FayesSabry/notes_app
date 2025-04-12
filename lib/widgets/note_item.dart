import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NonteItem extends StatelessWidget {
  const NonteItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
  });
  final String title;
  final String subtitle;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0.h),
      child: Stack(
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
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 26.sp,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      color: Colors.black.withValues(alpha: 0.5),
                    ),
                  ),
                ),

                Text(
                  date,
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
      ),
    );
  }
}
