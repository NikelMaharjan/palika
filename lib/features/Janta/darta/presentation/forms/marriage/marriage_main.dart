// import 'package:palikaa/features/Janta/darta/presentation/forms/marriage/suchakko_bibaran.dart';
// import 'package:palikaa/features/Janta/darta/presentation/forms/marriage/woman_bibaran.dart';
// import '../../../../../../export_pages.dart';
// import 'bibaha_bibaran.dart';
// import 'man_bibaran.dart';
//
//
//
// final progressProvider = StateNotifierProvider<ProgressProvider, double>((ref) => ProgressProvider());
// class ProgressProvider extends StateNotifier<double>{
//   ProgressProvider() : super(0.0);
//
//   void changeValue(double val){
//     state = val;
//   }
//
//
//
// }
//
//
//
// class MarriageMain extends StatefulWidget {
//
//
//   @override
//   _MarriageMainState createState() => _MarriageMainState();
// }
//
// class _MarriageMainState extends State<MarriageMain> {
//   final _controller =PageController();
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//   // Future<bool> onWillPop(WidgetRef ref, double progress) async {
//   //   if (_controller.page!.round() == _controller.initialPage) {
//   //     ref.read(progressProvider.notifier).changeValue(0.0);
//   //     return true;
//   //   } else {
//   //     ref.read(progressProvider.notifier).changeValue(progress - 0.2);
//   //     _controller.previousPage(
//   //       duration: const Duration(milliseconds: 200),
//   //       curve: Curves.linear,
//   //     );
//   //     return false;
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Consumer(
//         builder: (context, ref, child) {
//           return Scaffold(
//               body: SafeArea(
//                 child: PageView(
//                   physics: const NeverScrollableScrollPhysics(),
//                   pageSnapping: false,
//                   controller: _controller,
//                   children: [
//                     BibahaBibaran(_controller, ref),
//                     ManBibaran(_controller, ref),
//                     WomanBibaran( _controller, ref),
//                     SuchakBibaran(_controller, ref)
//                   ],
//                 ),
//               )
//           );
//         }
//     );
//   }
// }
