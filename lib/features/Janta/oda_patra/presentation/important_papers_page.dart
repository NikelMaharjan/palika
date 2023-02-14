
import '../../../../export_pages.dart';

class ImportantPapers extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    TextStyle headStyle = TextStyles.labelStyle1;
    TextStyle listStyle = TextStyle(
      fontFamily: FontStyles.poppins,
      fontWeight: FontStyles.mediumBold,
      height: 2.0,
      fontSize: 12.sp,
      color: darkGrey
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
            "दुबै कान देखिने हालसालै खिचिएको पासपोर्ट साइजको फोटो सहीत कालो मसीले विवरन भरेको अनुसुची फार",
            "सम्बन्धित वडाका अध्यक्षको सिफरिस",
            "जन्मा मिती खुलेको कागजको प्रतिलिपीहरु (जन्मादर्ता प्रमाणपत्र, शैक्षिक संस्थाको प्रमाणपत्र)",
            "बसाइ सारी आएको भए बसाईसराइ प्रमाणपत्रको प्रतिलिपी",
            "विवहित महिलाको हकमा विवह दर्ता प्रमाणपत्र प्रतिलिपी",
            "अस्थायी नागरिकको प्रतिलिपी वा पिताको नागरिकताको प्रतिलिपी",
            "विवहित महिलाको हकमा पतिको नागरिकताको प्रतिलिपी र माइतितर्फको पिता वा भएसम्मको",
            "नजिकको नातेदारको नागरिकता प्रमाणप्रत्रको प्रतिलिपी"
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
                            child: Text("रु. १५०", style: listStyle,)),
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
    fontFamily: FontStyles.poppins,
    fontWeight: FontStyles.mediumBold,
    height: 1.7,
    fontSize: 12.5.sp,
    color: textBlack
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