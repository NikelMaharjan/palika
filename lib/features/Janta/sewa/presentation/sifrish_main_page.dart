import 'package:palikaa/features/Janta/sewa/data/sifarish_data.dart';
import 'package:palikaa/export_pages.dart';


class SifarishMainPage extends ConsumerWidget {

  @override
  Widget build(BuildContext context, ref) {
    return  Scaffold(
      appBar:  FixedNavAppBar.fixedAppBar(context: context, label: 'Nagarik Sifarish'),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 20.h),
              height: 211.h,
              width: 414.w,
              padding: EdgeInsets.only(top: 18.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    color: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r)
                    ),
                    child: CircleAvatar(
                        radius: 40.r,
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/widget_icons/nagariksifarish.png', height: 40.w, width: 40.h,
                        fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  SizedBox(height: 20.h),

                  Container(
                    width: 300.w,
                    height: 54.h,
                    child: Text(
                      'नागरिकता सिफारिशका निम्ति अावश्यक कागजात तथा अन्य जानकारीका लागि नागरिक वडापत्रमा जानुहाेस',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        color: Color(0xFF414141)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: GridView.builder(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 8.h),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    crossAxisCount: 2,
                    mainAxisExtent: 160.w
                ),
                itemCount: sifarishList.length,
                itemBuilder: (context, index){
                  final data = sifarishList[index];
                  return InkK(
                    splash: Colors.grey,
                    onTap: (() async{
                      await Future.delayed(Duration(milliseconds: 50));
                      data.onTap!(context);
                    } ),
                    child: Card(
                      color: Colors.white,
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(8.r),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.r),
                                  border: Border.all(color: data.borderColor, width: 1)
                              ),
                              child: CircleAvatar(
                                backgroundColor: data.bgColor,
                                radius: 30.r,
                                child:  Container(
                                  child: ImageIcon(
                                    AssetImage(data.iconPath),
                                    color: data.iconColor,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 9.h),
                            Container(
                              child: Text(
                                data.label,
                                style: data.styles,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }


}


