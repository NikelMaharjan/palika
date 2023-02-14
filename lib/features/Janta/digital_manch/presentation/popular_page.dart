import 'package:palikaa/export_pages.dart';

class UserComment{
  final String imagePath;
  final String name;
  final String overview;
  final int comment;
  
  UserComment({
    required this.name,
    required this.imagePath,
    required this.overview,
    required this.comment
});
  
}

List<UserComment>  _datas = [
  UserComment(name: 'Er. Sarah Parajuli', imagePath: 'assets/user_icons/teacher.png',
      comment: 20,
      overview: 'Women in tech statistics: The hard truths of an uphill battle'),
  UserComment(name: 'मिना बास्कोटा',
      comment:10, imagePath: 'assets/user_icons/teacher.png', overview: 'महिला श-शक्तिकरनमा स्थानिय निकायको भुमिका'),
  UserComment(name: 'रोशन',
      comment: 15,
      imagePath: 'assets/user_icons/businessman.png', overview: 'म सचेत नेपालीमा किन जोडिए?'
  ),

];


class PopularPage extends StatelessWidget {
  const PopularPage({super.key});



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 19.h),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
            itemCount: _datas.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 20.w, right: 20.w, top: 12.h, bottom: 10.h),
                  child: SizedBox(
                      height: width < 382 ? 260.h : 245.h,
                      width: 414.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25.r,
                                backgroundImage: AssetImage(_datas[index].imagePath)
                              ),
                              SizedBox(
                                width: 7.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(_datas[index].name,
                                    style: TextStyles.textFormStyle),
                                  SizedBox(
                                    width: 7.h,
                                  ),
                                  Text('12hr ago',  style:
                                  TextStyles.timeStyle
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(_datas[index].overview, style: TextStyles.detailStyle
                          ) ,
                          SizedBox(
                            height: 5.h,
                          ),
                             Image.asset('assets/widget_icons/vibes.png'),

                          SizedBox(
                            height: 25.h,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(

                             ),
                              onPressed: () {
                            //context.pushNamed(AppRoute.comment.name);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.messenger_outline, color: whiteColor,),
                                  SizedBox(width: 7.w,),
                                  Text(_datas[index].comment.toString(), style: TextStyles.tabBarStyle,)
                                ],
                              )
                          ),
                        ],
                      )),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: (){

        }, child: const Icon(Icons.add),),
    )
    ;
  }
}
