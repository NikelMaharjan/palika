import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: [
       Container(
         height: 75.h,
       width: 374.w,
       decoration: BoxDecoration(
       color: Colors.white,
           borderRadius: BorderRadius.circular(8.r),
           border: Border.all(color: Color(0xFFCECECE), width: 1.h)
       ),
      child: Container(
        margin: EdgeInsets.only( left: 16.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Anusuchi Form', style: TextStyle(fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                color: Color(0xFF414141)),),
            Spacer(),
            IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.camera_alt, color: Color(0xFF00A651),),
            ),
            IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.attach_file, color: Color(0xFF00A651)),
            ),

          ],
        ),
      ),
    ),



SizedBox(height: 20.h,),

           Container(
             height: 75.h,
             width: 374.w,
             decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(8.r),
                 border: Border.all(color: Color(0xFFCECECE), width: 1.h)
             ),
             child: Container(
               margin: EdgeInsets.only( left: 16.w),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Text('Nagarik Pramanpatra', style: TextStyle(fontFamily: 'Poppins',
                       fontWeight: FontWeight.w500,
                       fontSize: 14.sp,
                       color: Color(0xFF414141)),),
                   Spacer(),
                   IconButton(
                     onPressed: (){

                     },
                     icon: Icon(Icons.camera_alt, color: Color(0xFF00A651),),
                   ),
                   IconButton(
                     onPressed: (){

                     },
                     icon: Icon(Icons.attach_file, color: Color(0xFF00A651)),
                   ),

                 ],
               ),
             ),
           ),



           SizedBox(height: 20.h,),

           Container(
             height: 75.h,
             width: 374.w,
             decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(8.r),
                 border: Border.all(color: Color(0xFFCECECE), width: 1.h)
             ),
             child: Container(
               margin: EdgeInsets.only( left: 16.w),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Text('Odaadhachya Sifarish ', style: TextStyle(fontFamily: 'Poppins',
                       fontWeight: FontWeight.w500,
                       fontSize: 14.sp,
                       color: Color(0xFF414141)),),
                   Spacer(),
                   IconButton(
                     onPressed: (){

                     },
                     icon: Icon(Icons.camera_alt, color: Color(0xFF00A651),),
                   ),
                   IconButton(
                     onPressed: (){

                     },
                     icon: Icon(Icons.attach_file, color: Color(0xFF00A651)),
                   ),

                 ],
               ),
             ),
           ),

         ],
       ),
        );
  }

}
