import 'package:easy_localization/easy_localization.dart';

import '../../../export_pages.dart';





class NoticeNewsPage extends StatefulWidget {
  @override
  _NoticeNewsPageState createState() => _NoticeNewsPageState();
}

class _NoticeNewsPageState extends State<NoticeNewsPage>
    with SingleTickerProviderStateMixin {
 late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 47.h,
              width: 375.w,
              margin:  EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              decoration: BoxDecoration(
                color: whiteShade,
                borderRadius: BorderRadius.circular(
                  23.5.r,
                ),
              ),
              child: Container(
                height: 37.h,
                padding: EdgeInsets.all(5.r),
                width: 173.w,
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      23.5.r,
                    ),
                    color: primaryColor.withOpacity(0.9),
                  ),
                  labelColor: whiteColor,
                  labelStyle: TextStyle(
                      fontSize: FontSizes.s15
                  ),
                  unselectedLabelColor: tabBarColor,
                  tabs:  [
                    Tab(
                      text: tr('Notice'),
                    ),

                    // second tab [you can add an icon using the icon property]
                    Tab(
                      text: tr('News'),
                    ),
                  ],
                ),
              ),
            ),
            Consumer(
              builder: (context, ref, child) {

                return Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
               Container(),
               Container(),
                    ],
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
