
import '../../../../../../export_pages.dart';
import '../../../../oda_patra/presentation/important_papers_page.dart';



class ImportantPapers1 extends StatelessWidget {


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
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar:  FixedNavAppBar.fixedAppBar(context: context, label: 'Bibaha darta'),
      body: Container(
        margin: EdgeInsets.only(top: 10.h),
        color:  whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ImportantPapers(),
            Column(
              children: [
                ElevatedButton(
                    onPressed: (){
                      context.pushNamed(AppRoute.main.name);
                    }, child: Text('विवाह दर्ता फारम मा जनुहोस ', style: TextStyle(fontSize: 17.sp),)),
                SizedBox(height: 20,),
                // ElevatedButton(
                //     onPressed: (){
                //       context.pushNamed(AppRoute.showPage.name);
                //     }, child: Text('फारम भरिएको छ भने हेर्नुस ', style: TextStyle(fontSize: 17.sp),))
              ],
            ),

          ],
        ),
      ),
    );
  }

  Column _buildColumn({required String label,required Widget papers}) {
    return Column(
      children: [
        Container(
          color:  whiteColor,
          child: ExpansionTile(
            collapsedTextColor: primaryColor,
            textColor: whiteColor,
            collapsedIconColor: primaryColor,
            backgroundColor: primaryColor,
            iconColor: whiteColor,
            title: Text(
              label,
              style: _textStyle(),
            ),
            children: [
              papers
            ],
          ),
        ),
        SizedBox(height: 8.h,),
      ],
    );
  }

  TextStyle _textStyle() {
    return TextStyle(
      fontFamily: FontStyles.poppins,
      fontSize: 14.sp,
      fontWeight: FontStyles.mediumBold,
    );
  }
}
