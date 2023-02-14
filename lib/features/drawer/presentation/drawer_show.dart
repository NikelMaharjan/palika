import 'package:palikaa/export_pages.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/shared/common_provider.dart';
import '../../../core/shared/language_provider.dart';
import '../../main/dashboard/application/providers.dart';





class DrawerShow extends StatelessWidget {


  final ZoomDrawerController zoomDrawerController;
  const DrawerShow({super.key, required this.zoomDrawerController});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
          builder: (context, ref, child) {
            final width = MediaQuery.of(context).size.width;
            final isLoad = ref.watch(loadingProvider);
            final language = ref.watch(languageProvider);
            return SizedBox(
              width: double.infinity,
              child: Drawer(
                  child: Material(
                    color: primaryColor,
                    child: ListView(
                      children: [
                        DrawerHeader(
                            decoration: const BoxDecoration(
                              color: primaryColor,
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                children:  [
                                  CircleAvatar(
                                    radius: 40.r,
                                    backgroundColor: whiteColor,
                                    backgroundImage:
                                    const AssetImage('assets/user_icons/businessman.png'),

                                  ),
                                gapW10,
                                  Text('Prashanna',
                                    style: TextStyles.drawerStyle
                                  ).tr()
                                ],
                              ),
                            )

                        ),


                        ListTile(
                          title: Text(
                            'Dashboard',
                            style: TextStyles.drawerStyle).tr(),
                          onTap: () {
                            ZoomDrawer.of(context)!.toggle();
                          },
                          leading: const Icon(
                            FontAwesomeIcons.gaugeHigh, color: Colors.white,),
                        ),

                        ListTile(
                          title: Text(
                            'Notification',
                            style: TextStyles.drawerStyle).tr(),
                          onTap: () {

                              ZoomDrawer.of(context)!.toggle();
                              ref.read(bIndexProvider.notifier)
                                  .onTaps(3);

                          },
                          leading: const Icon(CupertinoIcons.bell_fill, color: Colors.white,),
                        ),
                        ListTile(
                          title: Text(
                            'Suggestion',
                            style: TextStyles.drawerStyle).tr(),
                          onTap: () {
                            // Get.to(() => SuggestionPage(false),
                            //     transition: Transition.leftToRight);
                          },
                          leading: const Icon(CupertinoIcons.flag_fill,
                              color: Colors.white),
                        ),

                        ListTile(
                          title: Text('How to used it ?',
                            style: TextStyles.drawerStyle).tr(),
                          onTap: () {},
                          leading: const Icon(CupertinoIcons.question_circle_fill,
                              color: Colors.white),
                        ),

                        ListTile(
                          title: Text(
                            'Settings',
                            style: TextStyles.drawerStyle).tr(),
                          onTap: () {},
                          leading: const Icon(Icons.settings, color: Colors.white),
                        ),

                        ListTile(
                          title: Text(
                            'Privacy Policy',
                            style: TextStyles.drawerStyle).tr(),
                          onTap: () async{
                            await launchUrl(Uri.parse('https://pages.flycricket.io/digital-palika-1/privacy.html'));
                          },
                          leading: const Icon(
                            Icons.info, color: Colors.white,),
                        ),


                        SizedBox(height: 30.h),
                        Padding(
                          padding: EdgeInsets.only(left: 7.w),
                          child: width < 350? Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Column(
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      ref.read(languageProvider.notifier).changeEng(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: language  ? whiteColor : const Color(0xFFFED157)    ,
                                        minimumSize: Size(107.w, 50.h)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 10.w,
                                          child: Radio(
                                            onChanged: (val){},
                                            activeColor: primaryColor,
                                            value: 0,
                                            groupValue: !language ? 5 : 0,
                                          ),
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          'English',
                                          style: TextStyles.drawerStyle1
                                        )
                                      ],
                                    )
                                ),
                                SizedBox(height: 5.h),

                                ElevatedButton(
                                    onPressed: () {
                                      ref.read(languageProvider.notifier).changeNep(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: !language ?  const Color(0xFFFED157) :Colors.white ,
                                        minimumSize: Size(107.w, 50.h)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 16.w,
                                          child: Radio(
                                            activeColor: primaryColor,
                                            value: 1 ,
                                            onChanged: (val){},
                                            groupValue:  !language  ? 1 : 5,
                                          ),
                                        ),
                                        SizedBox(width: 12.w),
                                        Text(
                                          'नेपाली',
                                          style: TextStyles.drawerStyle1
                                        )
                                      ],
                                    )),


                              ],
                            ),
                          ):  Row(
                            children: [

                              ElevatedButton(
                                  onPressed: () {
                                    ref.read(languageProvider.notifier).changeEng(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:  !language  ? Colors.white : const Color(0xFFFED157)    ,
                                      minimumSize: Size(107.w, 50.h)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 10.w,
                                        child: Radio(
                                          onChanged: (val){},
                                          activeColor: primaryColor,
                                          value: 0,
                                          groupValue:  !language ? 5 : 0,
                                        ),
                                      ),
                                      SizedBox(width: 10.w),
                                      Text(
                                        'English',
                                        style: TextStyles.drawerStyle1
                                      )
                                    ],
                                  )
                              ),
                              SizedBox(width: 5.w),

                              ElevatedButton(
                                  onPressed: () {
                                    ref.read(languageProvider.notifier).changeNep(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:  !language ?  const Color(0xFFFED157) :Colors.white ,
                                      minimumSize: Size(107.w, 50.h)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 16.w,
                                        child: Radio(
                                          activeColor: primaryColor,
                                          value: 1 ,
                                          onChanged: (val){},
                                          groupValue: !language  ? 1 : 5,
                                        ),
                                      ),
                                      SizedBox(width: 12.w),
                                      Text('नेपाली',
                                        style: TextStyles.drawerStyle1
                                      )
                                    ],
                                  )),


                            ],
                          ),
                        ),

                        SizedBox(height: 200.w,),

                      ],
                    ),
                  )
              ),
            );
          }
      ),
    );
  }
}