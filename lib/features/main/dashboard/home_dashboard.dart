import '../../../core/shared/loading_provider.dart';
import '../../../export_pages.dart';
import '../../nitiniyam/presentation/nitiniyam_page.dart';
import '../../user_profile/presentation/profile_page.dart';
import '../home/home_page.dart';
import 'application/providers.dart';
import 'data/check_version.dart';






class HomeDashboard extends ConsumerStatefulWidget {
  final ZoomDrawerController zoomDrawerController;
  HomeDashboard(this.zoomDrawerController);
  @override
  ConsumerState createState() => _HomeDashboardState();
}

class _HomeDashboardState extends ConsumerState<HomeDashboard>{



  onTapNav(BuildContext context){
    ZoomDrawer.of(context)!.toggle();
    ref.read(drawerProvider.notifier).toggle();
  }

  Future<bool> showHome(bool isDrawer, BuildContext context) async{
    if(  ZoomDrawer.of(context)!.isOpen() == true ){
      ZoomDrawer.of(context)!.toggle();
      ref.read(drawerProvider.notifier).toggle();
      return false;
    }
    return true;

  }




  @override
  void initState() {
    super.initState();
   VersionService.checkVersion(context);
 //   getToken();

  }


  //
  // void getToken() async{
  //  final token = await FirebaseMessaging.instance.getToken();
  //  print(token);
  // }



  @override
  Widget build(BuildContext context) {
    final authData =[];
    List<Widget> _pages = [
      HomePage(),
     authData.isEmpty ? LoginFirst(): Container(),
      NitiNiyamPage(),
      authData.isEmpty ? LoginFirst() :NoticeNewsPage(),
      ProfilePage(),
    ];
    return Scaffold(
      body: Consumer(
          builder: (context, ref, child) {
            final tabIndex = ref.watch(bIndexProvider);
            final label = ref.watch(labelProvider);
            final isDrawerOpen = ref.watch(drawerProvider);
            return WillPopScope(
              onWillPop: () => showHome(isDrawerOpen, context),
              child: Consumer(
                  builder: (context, watch, child) {
                    return Scaffold(
                        appBar: FixedAppBar.fixedAppBar(onTapNav: () => onTapNav(context),
                            context: context,
                            label: label),
                        body: SafeArea(
                          child: PageTransitionSwitcher(
                            duration: const Duration(seconds: 1),
                            transitionBuilder: (child,
                                animation, secAnimation) =>
                                SharedAxisTransition(
                                    animation: animation,
                                    child: child,
                                    secondaryAnimation: secAnimation,
                                    transitionType: SharedAxisTransitionType
                                        .horizontal),
                            child: _pages[tabIndex],
                          ),
                        ),
                        bottomNavigationBar: Consumer(
                            builder: (context, watch, child) {
                              final tabInt = ref.watch(bIndexProvider);
                              return Container(
                                  color: Colors.white,
                                  height: kBottomNavigationBarHeight,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 10.w, right: tabInt == 4 ? 7.w : 0),
                                    child: GNav(
                                      rippleColor: Colors.grey[300]!,
                                      hoverColor: Colors.grey[100]!,
                                      gap: 7.w,
                                      selectedIndex: tabInt,
                                      onTabChange: (index) {
                                        ref.read(bIndexProvider.notifier)
                                            .onTaps(index);
                                      },
                                      tabActiveBorder: Border.all(
                                          color: const Color(0xFF00A651),
                                          width: 1.w),
                                      duration: const Duration(milliseconds: 400),
                                      tabBackgroundColor: const Color.fromRGBO(
                                          0, 166, 81, 0.1),
                                      color: const Color(0xFFCECECE),
                                      tabs: [
                                        navWidget(
                                            height: 5.h,
                                            width: 5.w,
                                            activeIconColor: const Color(
                                                0xFFFED157),
                                            textColor: const Color(0xFF00A651),
                                            index: 0,
                                            boxColor: const Color(0xFF00A651),
                                            url: 'assets/nav_icons/home.png',
                                            activeImageIconColor: const Color(
                                                0xFFFED157),
                                            imageIconColor: const Color(0xFFCECECE),
                                            label: 'Home',
                                            tabNum: tabInt

                                        ),
                                        navWidget(
                                            height: 5.h,
                                            width: 5.w,
                                            activeIconColor: const Color(
                                                0xFFFED157),
                                            textColor: const Color(0xFF00A651),
                                            index: 1,
                                            boxColor: const Color(0xFF00A651),
                                            url: 'assets/nav_icons/message.png',
                                            activeImageIconColor: const Color(
                                                0xFFFED157),
                                            imageIconColor: const Color(0xFFCECECE),
                                            label: 'Chat',
                                            tabNum: tabInt

                                        ),
                                        navWidget(
                                            height: 5.h,
                                            width: 5.w,
                                            activeIconColor: const Color(
                                                0xFFFED157),
                                            textColor: const Color(0xFF00A651),
                                            index: 2,
                                            boxColor: const Color(0xFF00A651),
                                            url: 'assets/nav_icons/ham.png',
                                            activeImageIconColor: const Color(
                                                0xFFFED157),
                                            imageIconColor: const Color(0xFFCECECE),
                                            label: 'NitiNiyam',
                                            tabNum: tabInt
                                        ),
                                        navWidget(
                                            height: 5.h,
                                            width: 5.w,
                                            activeIconColor: const Color(
                                                0xFFFED157),
                                            textColor: const Color(0xFF00A651),
                                            index: 3,
                                            boxColor: const Color(0xFF00A651),
                                            url: 'assets/nav_icons/notification.png',
                                            activeImageIconColor: const Color(
                                                0xFFFED157),
                                            imageIconColor: const Color(0xFFCECECE),
                                            label: 'Notice',
                                            tabNum: tabInt
                                        ),

                                        navWidget(
                                            height: 5.h,
                                            width: 5.w,
                                            activeIconColor: const Color(
                                                0xFFFED157),
                                            textColor: const Color(0xFF00A651),
                                            index: 4,
                                            boxColor: const Color(0xFF00A651),
                                            url: 'assets/nav_icons/user.png',
                                            activeImageIconColor: const Color(
                                                0xFFFED157),
                                            imageIconColor: const Color(0xFFCECECE),
                                            label: 'Profile',
                                            tabNum: tabInt
                                        ),
                                      ],
                                    ),
                                  )
                              );
                            }
                        )
                    );
                  }
              ),
            );
          }
      ),
    );
  }

  GButton navWidget({
   required double height,
   required double width,
   required String url,
   required String label,
   required Color activeIconColor,
   required Color textColor,
   required Color boxColor,
   required Color activeImageIconColor,
   required Color imageIconColor,
   required int index,
   required int tabNum,
   Function? onPressed
  }){
    return  GButton(
      onPressed: onPressed,
      textStyle: TextStyle(fontSize: 14.sp, color: Color(0xFF00A651),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600
      ),
      padding: EdgeInsets.symmetric(
          vertical: height , horizontal: width ),
      iconActiveColor: activeIconColor,
      textColor: textColor,
      leading:tabNum == index ? SizedBox(
        child: Container(
            margin: EdgeInsets.only(left: 5),
            height: 32.h,
            padding: EdgeInsets.all(5.w),
            decoration: BoxDecoration(
              color: boxColor,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Image.asset(url,
                fit: BoxFit.cover, color: activeImageIconColor,),
            )),
      ) : ImageIcon(AssetImage(url),
          size: 50.w,
          color: imageIconColor),
      text: label, icon: Icons.book,
    );
  }


}

