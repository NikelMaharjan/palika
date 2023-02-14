import 'package:palikaa/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCommentPage extends StatefulWidget {
  const AddCommentPage({super.key});

  @override
  State<AddCommentPage> createState() => _AddCommentPageState();
}

class _AddCommentPageState extends State<AddCommentPage> {
  final textController = TextEditingController();
  String chatMessage = '';

  @override
  void initState() {
    textController.addListener(() {
      setState(() {
        chatMessage = textController.text;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: _buildPreferredSize(context, width),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                  child: SizedBox(
                width: 350.w,
                child: Text(
                  chatMessage,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: lightGreyColor,
                  ),
                ),
              )),
            ),
            Container(
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
                              color: greyColor)
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              autofocus: true,
                              controller: textController,
                              minLines: 1,
                              maxLines: 1000,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    left: 25.w, top: 10.w, bottom: 10.w),
                                hintText: "Type a Message",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: mediumWhite,
                                  fontFamily: "Poppins",
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15.w),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.mic),
                              color: tabBarColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  PreferredSize _buildPreferredSize(BuildContext context, double width) {
    return PreferredSize(
        preferredSize: Size(414.w, 60.w),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: backgroundColor,
              bottomOpacity: 0.0,
              centerTitle: true,
              titleSpacing: 0,
              elevation: 0,
              title: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.r),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.08),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(2, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: InkWell(
                      splashColor: Colors.grey,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: CircleAvatar(
                        backgroundColor: lightWhite,
                        radius: width < 382 ? 24.r : 22.r,
                        child: const Icon(
                          CupertinoIcons.multiply,
                          color: lightGreyColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 37.w),
                    width: 212.w,
                    child: Text(
                      'Add Comment',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: primaryColor,
                          fontFamily: 'Roboto',
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Post',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          fontSize: 15.5.sp,
                          color: darkGrey),
                    ))
              ],
            )));
  }
}
