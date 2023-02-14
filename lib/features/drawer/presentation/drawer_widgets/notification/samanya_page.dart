import 'package:palikaa/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SamanyaPage extends StatelessWidget {
  const SamanyaPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Container(
          margin: EdgeInsets.only(top: 83.h),
          alignment: Alignment.center,
          child: Column(
            children: [
              CircleAvatar(
                radius: 60.r,
                backgroundColor: primaryColor.withOpacity(0.5),
                child: CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 40.r,
                  child: const Icon(Icons.notifications_off_outlined, color: whiteColor, size: 30,),
                ),
              ),
               SizedBox(height: 22.h,),
              const Text('You don\'t have any notification', style: TextStyle(fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: darkGrey
              ),
              )
            ],
          ),
        ),
    );
  }
}
