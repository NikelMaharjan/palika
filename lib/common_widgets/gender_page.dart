import 'package:palikaa/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class GenderToggle extends StatelessWidget {
  const GenderToggle({super.key,  required this.isGender, required this.label});
  final String label;
  final bool isGender;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: EdgeInsets.only(left: 10.w),
        width: 110.w,
        height: 50.h,
        decoration: BoxDecoration(
            color: isGender
                ? primaryColor
                : whiteColor,
            border: Border.all(
                width: 1, color: const Color(0xFFCECECE)),
            borderRadius: BorderRadius.circular(10.r)),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color(0xFF6B6B6B), width: 1),
                  borderRadius: BorderRadius.circular(70)),
              child: Container(
                width: 20.w,
                height: 20.w,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white, width: 4),
                    borderRadius: BorderRadius.circular(70)),
                child: Container(
                  width: 20.w,
                  height: 20.w,
                  decoration: BoxDecoration(
                    color: isGender
                        ? primaryColor
                        : whiteColor,
                    borderRadius: BorderRadius.circular(60.r),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 7.w,
            ),
            Text(
              label,
              style: TextStyle(
                  color: isGender
                      ? Colors.white
                      : const Color(0xFF6B6B6B)),
            ),
          ],
        ),
      ),
    );
  }
}
