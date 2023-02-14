import 'package:palikaa/constants/colors.dart';
import 'package:palikaa/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class SifarishForm extends StatelessWidget {


  final nameController = TextEditingController();
  final noController = TextEditingController();
  final genderController = TextEditingController();
  final mobileController = TextEditingController();
  final mailController = TextEditingController();
  final toleController = TextEditingController();
  final wardController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Form(
              // key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  sifarishWidgets(
                      label: 'Your Full Name(Nepalima)',
                      hintText: 'Your Full Name',
                      isPass: false,
                      controller: nameController
                  ),
                  SizedBox(height: 17.h,),
                  sifarishWidgets(
                      label: 'Nagarikta No.(Nepalima)',
                      hintText: 'Nagarika No.',
                      isPass: false,
                      controller: noController
                  ),

                  SizedBox(height: 17.h,),
                  sifarishWidgets(
                      label: 'Gender',
                      hintText: 'Male',
                      isPass: false,
                      controller:genderController
                  ),
                  SizedBox(height: 17.h,),
                  sifarishWidgets(
                      label: 'Mobile Number',
                      hintText: '9800000000',
                      isPass: false,
                      controller: mobileController
                  ),
                  SizedBox(height: 17.h,),
                  sifarishWidgets(
                      label: 'Email address',
                      hintText: 'example@gmail.com',
                      isPass: false,
                      controller: mailController
                  ),
                  SizedBox(height: 17.h,),
                  sifarishWidgets(
                      label: 'Tole(Nepalima)',
                      hintText: 'Eg.Dhapasi',
                      isPass: false,
                      controller: toleController
                  ),
                  SizedBox(height: 17.h,),
                  sifarishWidgets(
                      label: 'Ward No.',
                      hintText: '0',
                      isPass: false,
                      controller: wardController,
                    isLast: true
                  ),


                  SizedBox(
                    height: 17.h,
                  ),


                ],
              ),

    );
  }

  Widget sifarishWidgets({
   required String label,
  required  String hintText,
   required TextEditingController controller,
   required bool isPass,
   bool? isLast
  }){
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: Color(0xFFCECECE), width: 1.h)
      ),
      child: Container(
        margin: EdgeInsets.only( left: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 8.h),
              child: Row(
                children: [
                  Text(label,  style:TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 11.sp,
                    color: Color(0xFF6B6B6B).withOpacity(0.8),
                  )),
                  Text('*', style: TextStyles.starLabelTextStyle),
                ],
              ),
            ),
            TextFormField(
              cursorColor: Colors.black,
              obscureText: isPass ? true : false,
              controller: controller,
              style: TextStyles.textFormStyle,
              textInputAction: isLast != null ?  TextInputAction.next : TextInputAction.done,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(fontSize: 14.sp, color: Color(0xFFCECECE).withOpacity(0.8),
                    fontFamily: 'Poppins', fontWeight: FontWeight.w600),
                border: InputBorder.none,
              ),
            )
          ],
        ),
      ),
    );
  }
}
