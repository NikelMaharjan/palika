import 'package:flutter_native_splash/flutter_native_splash.dart';
import '../../export_pages.dart';
import 'dashboard/home_dashboard.dart';



class HomeScreen extends StatelessWidget {


  final drawerController = ZoomDrawerController();


  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(
          statusBarBrightness: Brightness.light,
          statusBarColor: backgroundColor,
        )
    );

    return Scaffold(
        body:
        Consumer(
          builder: (context, ref, child) {
            // ref.listen(authState, (previous, next) {
            //  // ref.read(authState.notifier).checkAndUpdateAuthStatus();
            // });
             final connection = ref.watch(connectionProvider);

              // ref.watch(messageStream);


             // user.maybeMap(orElse: (){}, authenticated: (users){
             //    final fStream = ref.watch(friendsStream);
             //     final mStream = ref.watch(messageStream);
             //      final info = ref.watch(infoProvider);
             //      final friend = ref.watch(userName);
             //     final  onlineUsers = ref.watch(userStream);
             //     final s = ref.watch(socketProvider.notifier);
             // });
            final width = MediaQuery.of(context).size.width;
            return   width > 550 ? Container(
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('🙂', style: TextStyle(fontSize: 35),),
                  SizedBox(height: 15,),
                  Text('Coming Soon In Tablet', style: TextStyle(fontSize: 25, color: Colors.blueGrey, letterSpacing: 2),),
                ],
              )),
            ) : ZoomDrawer(
              controller: drawerController,
              menuScreen: DrawerShow(zoomDrawerController: drawerController),
              mainScreen: HomeDashboard(drawerController),
              borderRadius: 0,
              style: DrawerStyle.defaultStyle,
              showShadow: true,
              angle: 0.0,
            moveMenuScreen: true,
              menuBackgroundColor:  primaryColor,
             isRtl: false,
              openCurve: Curves.fastOutSlowIn,
              closeCurve: Curves.easeInExpo,
              slideWidth: 287.w,
            );

          },
        )
    );
  }
}


