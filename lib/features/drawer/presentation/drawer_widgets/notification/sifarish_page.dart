import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SifarishPage extends StatelessWidget {
  const SifarishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20.r),
      child: SizedBox(
        height: 122.h,
        width: 375.w,
        child: Card(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.w, 20.h, 8.w, 14.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.message,
                  color: Color(0xFF3498DB),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'New notification',
                      style: TextStyle(
                          color: Color(0xFF414141),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                        height: 55.h,
                        width: 260.w,
                        child: Text(
                          'Do ullamco ex velit anim do proident exercitation et anim tempor. Lorem sunt deserunt labore non excepteur veniam enim quis officia magna anim...',
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 0.56)),
                          overflow: TextOverflow.ellipsis,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
