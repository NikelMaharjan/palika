import 'package:palikaa/export_pages.dart';
import 'package:palikaa/features/Janta/digital_manch/presentation/popular_page.dart';


List<UserComment>  _datas = [
  UserComment(name: 'डा रेवती रमण पौडेल', imagePath: 'assets/user_icons/teacher.png',
      comment: 12,
      overview: 'सत्रौ राष्ट्रिय धान दिवस तथा रोपाईँ महोत्सव, २०७८'),
  UserComment(name: 'Kritika Shah',
      comment: 14,
      imagePath: 'assets/user_icons/teacher.png', overview: 'Women in IT: reflections and stories from women in UTO'),

];


class LatestPage extends StatelessWidget {
  const LatestPage({super.key});



  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 19.h),
        child: ListView.builder(
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
                                  Text(_datas[index].name, style: TextStyle(
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
                          Text(_datas[index].overview, style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: const Color(0xFF1C1C1C))) ,
                          SizedBox(
                            height: 5.h,
                          ),
                          Image.asset('assets/widget_icons/vibes.png'),

                          SizedBox(
                            height: 25.h,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                // Get.to(() => CommentPage(), transition: Transition.leftToRight);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.messenger_outline, color: whiteColor,),
                                  SizedBox(width: 7.w,),
                                  Text(_datas[index].comment.toString(), style: TextStyles.tabBarStyle)
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
        backgroundColor: const Color(0xFF00A561),
        onPressed: (){

        }, child: const Icon(Icons.add),),
    )
    ;
  }
}
