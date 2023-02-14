

import 'package:palikaa/features/drawer/presentation/drawer_widgets/notification/samanya_page.dart';
import 'package:palikaa/features/drawer/presentation/drawer_widgets/notification/sifarish_page.dart';

import '../../../../../export_pages.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  FixedNavAppBar.fixedAppBar(context: context, label: 'Education'),
        body:  DefaultTabController(
          length: 2,
          child: Container(
            margin:  EdgeInsets.only(top: 15.h),
            child: Column(
              children: [
                Container(
                  height: 47.h,
                  width: 375.w,
                  margin:  EdgeInsets.symmetric(horizontal: 15.w),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(
                      23.5.r,
                    ),
                  ),
                  child: Container(
                    height: 37.h,
                    padding: const EdgeInsets.all(5.0),
                    width: 173.w,
                    child: TabBar(
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          23.5.r,
                        ),
                        color: Colors.white,
                      ),
                      labelColor: primaryColor,
                      unselectedLabelColor: Colors.grey,
                      tabs: const [
                        Tab(
                          text: 'Samanya',
                        ),

                        // second tab [you can add an icon using the icon property]
                        Tab(
                          text: 'Sifarish',
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                     SamanyaPage(),
                      SifarishPage()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
