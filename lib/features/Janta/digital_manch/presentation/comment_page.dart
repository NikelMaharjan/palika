import 'package:palikaa/export_pages.dart';
import 'package:flutter/cupertino.dart';



class CommentPage extends StatelessWidget {
  const CommentPage({super.key});



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return   Scaffold(
        body: SafeArea(
          child: Column(
            children: [
             Expanded(
               child: SingleChildScrollView(
                 child: Column(
                   children: [
                     Padding(
                       padding: EdgeInsets.only(
                           left: 20.w, right: 20.w, top: 12.h),
                       child: SizedBox(
                           height: width < 382 ? 250.h : 220.h,
                           width: 414.w,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   CircleAvatar(
                                     radius: 25.r,
                                     backgroundImage: const NetworkImage(
                                       'https://media.istockphoto.com/photos/young-brownhaired-woman-eating-a-sandwich-while-walking-around-town-a-picture-id1275978757?b=1&k=20&m=1275978757&s=170667a&w=0&h=CmekahlfhzyKopTMJtMTz8uMLDhV8lg_dAqMQmLoqpY=',
                                     ),
                                   ),
                                   SizedBox(
                                     width: 7.w,
                                   ),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Suzam Shrestha', style: TextStyle(
                                           fontFamily: 'Poppins',
                                           fontWeight: FontWeight.w600,
                                           fontSize: 14.sp,
                                           color: labelBlack
                                       ),),
                                       SizedBox(
                                         width: 7.h,
                                       ),
                                       Text('12hr ago',
                                           style: TextStyle(
                                           fontFamily: 'Poppins',
                                           fontWeight: FontWeight.w400,
                                           fontSize: 9.sp,
                                           color: lightGreyColor
                                       ))
                                     ],
                                   )
                                 ],
                               ),
                               SizedBox(
                                 height: 10.h,
                               ),
                               Text('Where does it come from', style: TextStyle(
                                   fontFamily: 'Poppins',
                                   fontWeight: FontWeight.w600,
                                   fontSize: 16.sp,
                                   color: labelBlack
                               )) ,
                               SizedBox(
                                 height: 5.h,
                               ),
                               Text(
                                 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                                 style: TextStyle(
                                     fontFamily: 'Poppins',
                                     fontWeight: FontWeight.w400,
                                     fontSize: 12.5.sp,
                                     height: 1.5,
                                     color: lightGreyColor
                                 ) ,
                               ),
                               SizedBox(height: 7.h,),

                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Row(
                                     children: [
                                       IconButton(
                                           padding: EdgeInsets.zero,
                                           constraints: const BoxConstraints(),
                                         onPressed: (){},
                                           icon: const Icon(CupertinoIcons.hand_thumbsup,
                                             color: tabBarColor,
                                           )),
                                       SizedBox(width: 15.w,),
                                       Text('22', style: TextStyle(
                                         fontFamily: 'Roboto',
                                         color: tabBarColor,
                                         fontSize: 14.sp,
                                         fontWeight: FontWeight.w400
                                       ),),
                                       SizedBox(width: 15.w,),
                                       IconButton(
                                           padding: EdgeInsets.zero,
                                           constraints: const BoxConstraints(),
                                         onPressed: (){},
                                           icon: const Icon(CupertinoIcons.hand_thumbsdown, color: tabBarColor,)),
                                     ],
                                   ),

                                   Row(
                                     children: [
                                       IconButton(
                                         onPressed: (){},
                                           icon: const Icon(CupertinoIcons.bubble_left, color: tabBarColor,)),
                                       Text('15',
                                         style: TextStyle(
                                             fontFamily: 'Roboto',
                                             color: tabBarColor,
                                             fontSize: 14.sp
                                         ),
                                       )
                                     ],
                                   ),

                                 ],

                               ),

                             ],

                           ),
                       ),
                     ),

                     ExpansionTile(
                       initiallyExpanded: true,
                       collapsedBackgroundColor: Colors.white,
                       collapsedTextColor: Colors.grey,
                       textColor: textBlack,
                       backgroundColor: whiteColor,
                       collapsedIconColor: textBlack,
                       iconColor: textBlack,
                       title: Text(
                         'Best Comments',
                         style: TextStyle(
                           fontFamily: "Poppins",
                           fontSize: 14.sp,
                           fontWeight: FontWeight.w600,
                         ),
                       ),
                       children: [



                         Container(
                           color: Colors.white,
                           child: Padding(
                             padding: EdgeInsets.only(
                                 left: 20.w, right: 20.w, top: 12.h),
                             child: SizedBox(
                               height: width < 382 ? 250.h : 220.h,
                               width: 414.w,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Row(
                                     children: [
                                       CircleAvatar(
                                         radius: 25.r,
                                         backgroundImage: const NetworkImage(
                                           'https://media.istockphoto.com/photos/young-brownhaired-woman-eating-a-sandwich-while-walking-around-town-a-picture-id1275978757?b=1&k=20&m=1275978757&s=170667a&w=0&h=CmekahlfhzyKopTMJtMTz8uMLDhV8lg_dAqMQmLoqpY=',
                                         ),
                                       ),
                                      gapW8,
                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text('Suzam Shrestha',
                                             style: TextStyle(
                                               fontFamily: 'Poppins',
                                               fontWeight: FontWeight.w600,
                                               fontSize: 14.sp,
                                               color: labelBlack
                                           ),),
                                           SizedBox(
                                             width: 7.h,
                                           ),
                                           Text('12hr ago',
                                               style: TextStyle(
                                               fontFamily: 'Poppins',
                                               fontWeight: FontWeight.w400,
                                               fontSize: 9.sp,
                                               color: lightGreyColor
                                           ))
                                         ],
                                       )
                                     ],
                                   ),
                                   SizedBox(
                                     height: 10.h,
                                   ),
                                   Text('Where does it come from', style: TextStyle(
                                       fontFamily: 'Poppins',
                                       fontWeight: FontWeight.w600,
                                       fontSize: 16.sp,
                                       color: labelBlack
                                   )) ,
                                   SizedBox(
                                     height: 5.h,
                                   ),
                                   Text(
                                     'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                                     style: TextStyle(
                                         fontFamily: 'Poppins',
                                         fontWeight: FontWeight.w400,
                                         fontSize: 12.5.sp,
                                         height: 1.5,
                                         color: textBlack
                                     ) ,
                                   ),
                                   SizedBox(height: 7.h,),

                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Row(
                                         children: [
                                           IconButton(
                                               onPressed: (){},
                                               icon: const Icon(CupertinoIcons.arrow_turn_up_left, color: Color(0xFF9F9F9F),)),
                                           Text('Reply', style: TextStyle(
                                               fontFamily: 'Poppins',
                                               fontWeight: FontWeight.w400,
                                               fontSize: 14.sp,
                                               color: const Color(0xFF9F9F9F)
                                           ),)
                                         ],
                                       ),


                                       Row(
                                         children: [
                                           IconButton(
                                               padding: EdgeInsets.zero,
                                               constraints: const BoxConstraints(),
                                               onPressed: (){},
                                               icon: const Icon(CupertinoIcons.hand_thumbsup, color: Color(0xFF9F9F9F),)),
                                           SizedBox(width: 15.w,),
                                           Text('22', style: TextStyle(
                                               fontFamily: 'Roboto',
                                               color: const Color(0xFF9F9F9F),
                                               fontSize: 14.sp,
                                               fontWeight: FontWeight.w400
                                           ),),
                                           SizedBox(width: 15.w,),
                                           IconButton(
                                               padding: EdgeInsets.zero,
                                               constraints: const BoxConstraints(),
                                               onPressed: (){},
                                               icon: const Icon(CupertinoIcons.hand_thumbsdown, color: Color(0xFF9F9F9F),)),
                                         ],
                                       ),

                                     ],

                                   ),
                                 ],

                               ),
                             ),
                           ),
                         ),





                         Container(
                           color: Colors.white,
                           child: Padding(
                             padding: EdgeInsets.only(
                                 left: 20.w, right: 20.w, top: 12.h),
                             child: SizedBox(
                               height: width < 382 ? 250.h : 220.h,
                               width: 414.w,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Row(
                                     children: [
                                       CircleAvatar(
                                         radius: 25.r,
                                         backgroundImage: const NetworkImage(
                                           'https://media.istockphoto.com/photos/young-brownhaired-woman-eating-a-sandwich-while-walking-around-town-a-picture-id1275978757?b=1&k=20&m=1275978757&s=170667a&w=0&h=CmekahlfhzyKopTMJtMTz8uMLDhV8lg_dAqMQmLoqpY=',
                                         ),
                                       ),
                                       SizedBox(
                                         width: 7.w,
                                       ),
                                       Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text('Suzam Shrestha', style: TextStyle(
                                               fontFamily: 'Poppins',
                                               fontWeight: FontWeight.w600,
                                               fontSize: 14.sp,
                                               color: const Color(0xFF1C1C1C)
                                           ),),
                                           SizedBox(
                                             width: 7.h,
                                           ),
                                           Text('12hr ago',  style: TextStyle(
                                               fontFamily: 'Poppins',
                                               fontWeight: FontWeight.w400,
                                               fontSize: 9.sp,
                                               color: const Color(0xFF6B6B6B)))
                                         ],
                                       )
                                     ],
                                   ),
                                   SizedBox(
                                     height: 10.h,
                                   ),
                                   Text('Where does it come from', style: TextStyle(
                                       fontFamily: 'Poppins',
                                       fontWeight: FontWeight.w600,
                                       fontSize: 16.sp,
                                       color: const Color(0xFF1C1C1C))) ,
                                   SizedBox(
                                     height: 5.h,
                                   ),
                                   Text(
                                     'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                                     style: TextStyle(
                                         fontFamily: 'Poppins',
                                         fontWeight: FontWeight.w400,
                                         fontSize: 12.5.sp,
                                         height: 1.5,
                                         color: const Color(0xFF414141)) ,
                                   ),
                                   SizedBox(height: 7.h,),

                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Row(
                                         children: [
                                           IconButton(
                                               onPressed: (){},
                                               icon: const Icon(CupertinoIcons.arrow_turn_up_left, color: Color(0xFF9F9F9F),)),
                                           Text('Reply', style: TextStyle(
                                             fontFamily: 'Poppins',
                                             fontWeight: FontWeight.w400,
                                             fontSize: 14.sp,
                                             color: const Color(0xFF9F9F9F)
                                           ),)
                                         ],
                                       ),


                                       Row(
                                         children: [
                                           IconButton(
                                               padding: EdgeInsets.zero,
                                               constraints: const BoxConstraints(),
                                               onPressed: (){},
                                               icon: const Icon(CupertinoIcons.hand_thumbsup, color: Color(0xFF9F9F9F),)),
                                           SizedBox(width: 15.w,),
                                           Text('22', style: TextStyle(
                                               fontFamily: 'Roboto',
                                               color: const Color(0xFF9F9F9F),
                                               fontSize: 14.sp,
                                               fontWeight: FontWeight.w400
                                           ),),
                                           SizedBox(width: 15.w,),
                                           IconButton(
                                               padding: EdgeInsets.zero,
                                               constraints: const BoxConstraints(),
                                               onPressed: (){},
                                               icon: const Icon(CupertinoIcons.hand_thumbsdown, color: Color(0xFF9F9F9F),)),
                                         ],
                                       ),

                                     ],

                                   ),

                                 ],

                               ),
                             ),
                           ),
                         ),

                       ],
                     ),


                   ],
                 ),
               ),
             ),
              InkK(
                splash: Colors.grey,
                onTap: (){
     //  Get.to(() => AddCommentPage(), transition: Transition.zoom);
                },
                child:  Container(
                  margin: EdgeInsets.all(15.r),
                  height: 61.h,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35.0),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 3),
                                  blurRadius: 5,
                                  color: Colors.grey)
                            ],
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                 readOnly: true,
                                  enabled: false,
                                  minLines: 1,
                                  maxLines: 1000,
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 25.w),
                                    hintText: "Type a Message",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      color: const Color(0xFFCECECE),
                                      fontFamily: "Poppins",
                                      fontSize: 14.sp,
                                    ),
                                  ),

                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 15.w),
                                child: IconButton(
                                  onPressed: (){},
                                  icon: const Icon(CupertinoIcons.mic),
                                  color: const Color(0xFF9F9F9F),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}




