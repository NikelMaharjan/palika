import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NataPramanitPapers extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    TextStyle headStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: "Poppins",
      color: Color(0xFF1C1C1C),
      fontSize: 15.sp,
    );

    TextStyle listStyle = TextStyle(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        height: 2.0,
        fontSize: 12.sp,
        color: Color(0xFF414141)
    );
    return Container(
      width: 414.w,
      color: Colors.white,
      padding: EdgeInsets.only(top: 5.h, left: 19.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "आवश्यक कागजातहरु",
            style: headStyle,
          ),
          SizedBox(height: 5.h,),
          UnorderedList([
            "नाता कायम गर्ने सबैको नागरिकताको प्रमाणपत्रको प्रतिलिपी (उमेर नपुगेको हकमा जन्मा दर्ता प्रमाणपत्र प्रतिलिपी)",
            "हालै खिछेको पासपोर्ट साइजको फोटो (२ प्रती व्यक्ती)",
            "मृत्‍यु भईसकेको व्यक्तिसँग नाता प्रमाणित गर्नु परेकोमा म्रितक्को मृत्‍युदर्ता प्रमाणपत्र",
            "आवश्यकता अनुसार सर्जमिन मुचुल्का",
          ]),
          SizedBox(height: 10.h,),
          Container(
            child: Table(
              border: TableBorder.all(
                width: 0.5,
                color:Color(0xFF9F9F9F),
              ),
              columnWidths: {
                0: FixedColumnWidth(128.w),
              },
              children: [
                TableRow(
                    children: [
                      TableCell(
                        child: Container(
                            color: Color(0xFFCECECE),
                            child: Text("समय", style: listStyle,),
                            height: 34.h,
                            padding: EdgeInsets.only(left: 10.w)),
                      ),
                      TableCell(
                        child: Container(
                            height: 34.h,
                            padding: EdgeInsets.only(left: 19.w),
                            color: Color(0xFFF3F3F3),
                            child: Text("सोही दिन तुरुन्तै", style: listStyle,)),
                      ),
                    ]),


                TableRow(
                    children: [
                      TableCell(
                        child: Container(
                            color: Color(0xFFCECECE),
                            height: 34.h,
                            padding: EdgeInsets.only(left: 10.w),
                            child: Text("शुल्क", style: listStyle,)),
                      ),
                      TableCell(
                        child: Container(
                            height: 34.h,
                            padding: EdgeInsets.only(left: 19.w),
                            color: Color(0xFFF3F3F3),
                            child: Text("नेपालीमा रु. ३५० अङ्रेजिमा रु. ८५०", style: listStyle,)),
                      ),
                    ]),




                TableRow(
                    children: [
                      TableCell(
                        child: Container(
                            height: 34.h,
                            padding: EdgeInsets.only(left: 10.w),
                            color: Color(0xFFCECECE),
                            child: Text("सेवा दिने व्यक्ती", style: listStyle,)),
                      ),
                      TableCell(
                        child: Container(
                            height: 34.h,
                            padding: EdgeInsets.only(left: 19.w),
                            color: Color(0xFFF3F3F3),
                            child: Text("वडा अध्यक्ष", style: listStyle,)),
                      ),
                    ]),

              ],
            ),
          ),
          SizedBox(height: 10.h,),
        ],
      ),
    );
  }
}

TextStyle listStyles = TextStyle(
    fontFamily: "Poppins",
    fontWeight: FontWeight.w500,
    height: 1.7,
    fontSize: 12.5.sp,
    color: Color(0xFF414141)
);

class UnorderedList extends StatelessWidget {
  UnorderedList(this.texts);
  final List<String> texts;


  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(UnorderedListItem(text));
      // Add space between items
      widgetList.add(SizedBox(height: 5.0));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  UnorderedListItem(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("• ", style: TextStyle(fontSize: 20.sp),),
        Expanded(
          child: Text(text,  style: listStyles,),
        ),
      ],
    );
  }
}