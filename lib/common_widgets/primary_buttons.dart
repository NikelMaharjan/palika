import 'package:palikaa/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class PrimaryButton extends StatelessWidget {

  final bool isLoad;
 final VoidCallback? onPressed;
 final GlobalKey? form;
 final WidgetRef? ref;

  const PrimaryButton({super.key, required this.onPressed, required this.isLoad, this.form, this.ref});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(374.w, 57.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              backgroundColor: primaryColor,
            ),
            onPressed: onPressed,
            child: isLoad ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Please wait...'),
                SizedBox(width: 20),
                CircularProgressIndicator(
                  color: Colors.white,
                )
              ],
            ):  Text('Sign in', style: TextStyle(color: Colors
                .white, fontSize: 15.sp),)
        ),
      ],
    );
  }
}
