import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'export_pages.dart';



final boxB = Provider<bool>((ref) => false);


void main() async {
  if (defaultTargetPlatform == TargetPlatform.android) {

  }

  //await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(milliseconds: 500));
  await EasyLocalization.ensureInitialized();

  await Hive.initFlutter();


  final languageBox = await Hive.openBox<bool>('language');
  if(languageBox.isEmpty){
    languageBox.put('isEnglish', true);
  }
  SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]
  );
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarBrightness: Brightness.light ,
        statusBarColor: backgroundColor,
      )
  );





  runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('en', 'NP'),
        ],
        saveLocale: true,
        fallbackLocale:  const Locale('en', 'US'),
        path: 'assets/translations',
         child: ProviderScope(
           overrides: [

            boxB.overrideWithValue(languageBox.get('isEnglish')!)
           ],
            child: Home()
    ),
  ));
}







class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {



  @override
  void didChangeDependencies() async {
    await AppAssets.preloadImages(context);
    super.didChangeDependencies();
  }



  @override
  Widget build(BuildContext context) {
   // final width = MediaQuery.of(context).size.width;
    return Consumer(
        builder: (context, ref, child) {
          final routes = ref.watch(goRouterProvider);
          return ScreenUtilInit(
              designSize: const Size(414, 861),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (context, widget) {
                return MaterialApp.router(
                    routerDelegate: routes.routerDelegate,
                    routeInformationParser: routes.routeInformationParser,
                    routeInformationProvider: routes.routeInformationProvider,
                    localizationsDelegates: context.localizationDelegates,
                    supportedLocales: context.supportedLocales,
                    locale: context.locale,
                    builder: (context, widget) {
                      final width = MediaQuery.of(context).size.width;
                      return MediaQuery(
                        data: MediaQuery.of(context).copyWith(
                            textScaleFactor: width > 382 ? 1.1 : 1.1),
                        child: widget!,
                      );
                    },
                    theme: ThemeData(
                      primarySwatch: Colors.green,
                      unselectedWidgetColor: Colors.grey,

                      visualDensity: VisualDensity.adaptivePlatformDensity,
                      scaffoldBackgroundColor: backgroundColor,
                    ).copyWith(
                      elevatedButtonTheme: ElevatedButtonThemeData(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(374.w, 52.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          backgroundColor: primaryColor,
                        ),
                      ),
                      dialogTheme: const DialogTheme(
                          contentTextStyle: TextStyle(color: blackColor),
                        titleTextStyle: TextStyle(color: blackColor),
                      ),
                    ),
                    debugShowCheckedModeBanner: false,
                );
              }
          );
        }
    );
  }
}





