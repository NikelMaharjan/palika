import 'package:palikaa/features/Janta/darta/presentation/forms/birth/birth_darta_page.dart';
import 'package:palikaa/features/Janta/darta/presentation/forms/death/death_darta_page.dart';
import 'package:palikaa/features/main/home/home_page.dart';
import 'package:palikaa/karmachari_darta_page.dart';
import 'package:palikaa/features/Janta/darta/presentation/forms/migration/migration_darta_page.dart';
import 'package:palikaa/features/Janta/darta/presentation/forms/family_migration/family_migration_darta_page.dart';
import 'package:palikaa/pratinidhi_darta_page.dart';

import '../export_pages.dart';
import '../features/Janta/darta/presentation/darta_main_page.dart';
import '../features/Janta/darta/presentation/forms/marriage/bibaha_bibaran.dart';
import '../features/Janta/darta/presentation/forms/marriage/important_papers.dart';
import '../features/Janta/darta/presentation/forms/marriage/man_bibaran.dart';
import '../features/Janta/darta/presentation/forms/marriage/show_page.dart';
import '../features/Janta/darta/presentation/forms/marriage/suchakko_bibaran.dart';
import '../features/Janta/darta/presentation/forms/marriage/woman_bibaran.dart';


final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator = GlobalKey(debugLabel: 'shell');




final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
      routes: [
        GoRoute(
            path: '/',
            name: AppRoute.home.name,
        //    builder: (context, state) => MigrationDartaPage(),
             builder: (context, state) => HomeScreen(),

            routes: [
              GoRoute(
                path: 'mayor',
                name: AppRoute.mayor.name,
                builder: (context, state) =>  Scaffold(body: Container()),
              ),
              GoRoute(
                path: 'darta',
                name: AppRoute.darta.name,
                builder: (context, state) =>   DartaMainScreen(),
                routes: [
                  GoRoute(
                    path: 'man',
                    name: AppRoute.man.name,
                    builder: (context, state) => ManBibaran(),
                  ),
                  GoRoute(
                    path: 'showPage',
                    name: AppRoute.showPage.name,
                    builder: (context, state) => ShowPage(),
                  ),
                  GoRoute(
                    path: 'woman',
                    name: AppRoute.women.name,
                    builder: (context, state) => WomanBibaran(),
                  ),
                  GoRoute(
                    path: 'suchak',
                    name: AppRoute.suchak.name,
                    builder: (context, state) => SuchakBibaran(),
                  ),
                  GoRoute(
                    path: 'main',
                    name: AppRoute.main.name,
                    builder: (context, state) => BibahaBibaran(),
                  ),

                  GoRoute(
                    path: 'birth',
                    name: AppRoute.birth.name,
                    builder: (context, state) => BirthDartaPage(),
                  ),


                  GoRoute(
                    path: 'papers',
                    name: AppRoute.papers.name,
                    builder: (context, state) =>   ImportantPapers1(""),
                  ),
                ]
              ),
              GoRoute(
                path: 'chat',
                name: AppRoute.chatPage.name,
                builder: (context, state) =>  Container(),
              ),
              GoRoute(
                path: 'helloPage',
                name: AppRoute.helloPage.name,
                builder: (context, state) =>  Scaffold(body: Container()),
              ),
              GoRoute(
                  path: 'login',
                  name: AppRoute.login.name,
                  builder: (context, state) =>   Scaffold(body: Container())
              ),
              GoRoute(
                path: 'search',
                name: AppRoute.search.name,
                builder: (context, state) => SearchPage(),
              ),
              GoRoute(
                path: 'nayaksamiti',
                name: AppRoute.nayaksamiti.name,
                pageBuilder: (context, state) => CustomTransitionPage<void>(
                  key: state.pageKey,
                  child:   Container(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                      SlideTransition(
                          position: animation.drive(
                            Tween<Offset>(
                              begin: const Offset(-1, 0.0),
                              end: Offset.zero,
                            ),
                          ),
                          child: child),
                ),
              ),
              GoRoute(
                path: 'janaGunaso',
                name: AppRoute.janaGunaso.name,
                builder: (context, state) =>  Scaffold(body: Container()),
                routes: [
                  GoRoute(
                    path: 'suggestion',
                    name: AppRoute.suggestion.name,
                    builder: (context, state) =>   Scaffold(body: Container()),

                  ),
                ]
              ),
              GoRoute(
                path: 'odapatra',
                name: AppRoute.odapatra.name,
                builder: (context, state) => NagarikWodaMainScreen(),
                routes: odapatraRoutes
              ),
              GoRoute(
                path: 'palikaJankari',
                name: AppRoute.palikaJankari.name,
                builder: (context, state) =>  Scaffold(body: Container()),
              ),

              GoRoute(
                  path: 'palikaParichaya',
                  name: AppRoute.palikaParichaya.name,
                  builder: (context, state) =>    Container(),
                  routes: [
                    GoRoute(
                      path: 'profileShow',
                      name: AppRoute.profileShow.name,
                      builder: (context, state) =>  Scaffold(body: Container()),
                      routes: [
                        GoRoute(
                            path: 'populate/:s',
                            name: AppRoute.populate.name,
                            builder: (context, state) =>   Container()
                        ),
                      ]
                    ),
                  ]
              ),

              GoRoute(
                path: 'sewa',
                name: AppRoute.sewa.name,
                builder: (context, state) => SifarishMainPage(),
                routes: sewaRoutes
              ),
              GoRoute(
                path: 'digitalManch',
                name: AppRoute.digitalManch.name,
                builder: (context, state) => WallingMain(),
                routes: [
                  GoRoute(
                      path: 'comment',
                      name: AppRoute.comment.name,
                      builder: (context, state) => CommentPage(),
                  ),
                ]
              ),
              GoRoute(
                path: 'asamikSewa',
                name: AppRoute.asamikSewa.name,
                builder: (context, state) => const AakasmikSewaPage(),
              ),
              GoRoute(
                path: 'plans',
                name: AppRoute.plans.name,
                builder: (context, state) =>  Scaffold(body: Container()),
              ),
              GoRoute(
                path: 'touristPlace',
                name: AppRoute.touristPlace.name,
                builder: (context, state) => TouristMainPage(state.extra as Position),
              ),
              GoRoute(
                path: 'events',
                name: AppRoute.events.name,
                builder: (context, state) => JankariComponent(data: events, label: 'Sports & Events'),
              ),
              GoRoute(
                path: 'business',
                name: AppRoute.business.name,
                builder: (context, state) => JankariComponent(data: bPlaces, label: 'Byapar Bebasaya'),
              ),
              GoRoute(
                path: 'agriculture',
                name: AppRoute.agriculture.name,
                builder: (context, state) => JankariComponent(data: products, label: 'Agriculture', isFarm: true),
              ),
              GoRoute(
                path: 'development',
                name: AppRoute.development.name,
                builder: (context, state) => JankariComponent(data: devPlaces, label: 'Development Partners'),
              ),
              GoRoute(
                path: 'health',
                name: AppRoute.health.name,
                builder: (context, state) => const HealthMainPage(),
                routes: healthRoutes
              ),
              GoRoute(
                path: 'offices',
                name: AppRoute.offices.name,
                builder: (context, state) => Scaffold(body: Container()),
              ),
              GoRoute(
                path: 'education',
                name: AppRoute.education.name,
                builder: (context, state) => const EducationMainPage(),
                routes: educationRoutes
              ),
              GoRoute(
                  path: 'pdfPage',
                  name: AppRoute.pdfPage.name,
                  builder: (context, state) => PdfWidget(state.extra as String),

              ),
            ]
        ),

      ]);

});


List<GoRoute> odapatraRoutes = [
  GoRoute(
    path: 'odapatraDetail',
    name: AppRoute.odapatraDetail.name,
    builder: (context, state) => GharJaggaPage(),
  ),
];


List<GoRoute> healthRoutes = [
  GoRoute(
    path: 'healthDetail',
    name: AppRoute.healthDetail.name,
    builder: (context, state) => CompanyInfo(state.extra as Company),
  ),
];

List<GoRoute> educationRoutes = [
  GoRoute(
    path: 'educationDetail',
    name: AppRoute.educationDetail.name,
    builder: (context, state) => ClassPage(state.extra as String),
  ),
  GoRoute(
    path: 'classVideo',
    name: AppRoute.classVideo.name,
    builder: (context, state) => ClassVideo(state.extra as String),
  ),
];


List<GoRoute> sewaRoutes = [
  GoRoute(
    path: 'nagarikpratilip',
    name: AppRoute.nagarikpratilipi.name,
    builder: (context, state) => NagarikPratilipiPage(),
  ),
];









