import 'package:palikaa/constants/text_styles.dart';
import 'package:palikaa/constants/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/font_styles.dart';


class BasicTile extends StatelessWidget {
final double width;


BasicTile(this.width,  {super.key});

  bool isWalk = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          child: ExpansionTile(
            childrenPadding: EdgeInsets.fromLTRB(20.w, 16.h, 19.h, 18.w),
            title: Text(
              tr('Basic Information'),
              style: TextStyles.detailStyle,
            ),
            children: [
              // Container(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       FlutterSwitch(
              //           height: 30.h,
              //           width: 56.w,
              //           value: isWalk,
              //           activeColor: primaryColor,
              //           inactiveColor: const Color(0xFF9098A1),
              //           onToggle: (bool val) {
              //             setState(() {
              //               isWalk = val;
              //             });
              //           }),
              //       SizedBox(
              //         width: 15.w,
              //       ),
              //       Container(
              //           width: 150.w,
              //           height: 20.h,
              //           child: Text(
              //             'I live in karnali'.tr,
              //             style: TextStyle(
              //               fontSize: 14.sp,
              //               color: Color(0xFF414141),
              //               fontFamily: 'Poppins',
              //             ),
              //           ))
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 23.h,
              // ),
              getContainer('Email', ''),
              SizedBox(
                height: 16.h,
              ),
              getContainer('Mobile Number', '+977**********'),
            ],
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        Card(
          child: ExpansionTile(
            childrenPadding: EdgeInsets.fromLTRB(20.w, 16.h, 19.h, 18.w),
            title: Text(
              tr('Education'),
              style: TextStyles.detailStyle,
            ),
            children: [
              getContainer(tr('Occupation'), tr('Occupation')),
              SizedBox(
                height: 16.h,
              ),
              getContainer(tr('address'), tr('address')),
            ],
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        Card(
          child: ExpansionTile(
            childrenPadding: EdgeInsets.fromLTRB(20.w, 16.h, 19.h, 18.w),
            title: Text(
              tr('Other Information'),
              style: TextStyles.detailStyle
            ),
            children: [
              getContainer(tr('Landline'), tr('home phone number')),
              SizedBox(
                height: 16.h,
              ),
              getContainer(tr('Emergency Contact'), '-'),
            ],
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        // GetBuilder<GenderController>(
        //   init: GenderController(),
        //     builder: (cont) {
        //   return Card(
        //     child: ExpansionTile(
        //       childrenPadding: EdgeInsets.fromLTRB(20.w, 16.h, 19.h, 18.w),
        //       title: Text(
        //         'Gender'.tr,
        //         style: TextStyle(
        //             fontSize: 16.sp,
        //             fontFamily: 'Poppins',
        //             color: Color(0xFF1C1C1C),
        //             fontWeight: FontWeight.w600),
        //       ),
        //       children: [
        //      width < 330 ?  Align(
        //        alignment: Alignment.centerLeft,
        //        child: Column(
        //          crossAxisAlignment: CrossAxisAlignment.start,
        //          children: [
        //            InkK(
        //              child: GenderToggle(isGender: cont.genderState.isMale, label: 'Male'.tr,),
        //              onTap: (){
        //               cont.toggle();
        //              },
        //            ),
        //            SizedBox(width: 2.w,),
        //            InkK(
        //              child: GenderToggle(isGender:  cont.genderState.isFemale, label: 'Female'.tr,),
        //              onTap: (){
        //                cont.toggle1();
        //              },
        //            ),
        //            SizedBox(width: 2.w,),
        //            InkK(
        //              child: GenderToggle(isGender: cont.genderState.isOthers, label: 'Others'.tr,),
        //              onTap: (){
        //                cont.toggle2();
        //              },
        //            ),
        //
        //          ],
        //        ),
        //      ):  Row(
        //           children: [
        //             InkK(
        //               child: GenderToggle(isGender: cont.genderState.isMale, label: 'Male'.tr,),
        //             onTap: (){
        //               cont.toggle();
        //             },
        //             ),
        //             SizedBox(width: 2.w,),
        //             InkK(
        //               child: GenderToggle(isGender: cont.genderState.isFemale, label: 'Female'.tr,),
        //               onTap: (){
        //                 cont.toggle1();
        //               },
        //             ),
        //             SizedBox(width: 2.w,),
        //             InkK(
        //               child: GenderToggle(isGender: cont.genderState.isOthers, label: 'Others'.tr,),
        //               onTap: (){
        //                 cont.toggle2();
        //               },
        //             ),
        //
        //           ],
        //         ),
        //       ],
        //     ),
        //   );
        // }),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.r),
          child: ElevatedButton(
              onPressed:null,
              child: Text(
                tr('Update'),
                style: TextStyle(fontSize: 15.sp),
              )),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}


Container getContainer(String label, String hint) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: mediumWhite, width: 1.h)),
    child: Container(
      margin: EdgeInsets.only(left: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Row(
              children: [
                Text(tr(label), style: TextStyles.labelTextStyle),
                Text('*', style: TextStyles.starLabelTextStyle),
              ],
            ),
          ),
          TextFormField(
            cursorColor: Colors.black,
            style: TextStyles.textFormStyle,
            decoration: InputDecoration(
              hintText: tr(hint),
              hintStyle: TextStyle(
                  fontSize: FontSizes.s14,
                  color: mediumWhite.withOpacity(0.8),
                  fontFamily: FontStyles.poppins,
                  fontWeight: FontStyles.medium600),
              border: InputBorder.none,
            ),
          )
        ],
      ),
    ),
  );
}
