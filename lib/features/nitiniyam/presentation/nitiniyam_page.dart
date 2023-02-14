import '../../../export_pages.dart';
import 'package:easy_localization/easy_localization.dart';


class NitiNiyamPage extends StatefulWidget {
  @override
  _NitiNiyamPageState createState() => _NitiNiyamPageState();
}

class _NitiNiyamPageState extends State<NitiNiyamPage> with SingleTickerProviderStateMixin {
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
      body: Column(
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
                    text: tr('En/Kanun'),
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: tr('NitiNiyam'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
               EnKanunPage(true),
               EnKanunPage(false),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
