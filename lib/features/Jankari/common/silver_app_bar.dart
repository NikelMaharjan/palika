import '../../../export_pages.dart';
import '../../main/domain/tab_data.dart';



class BuildSilverApp extends StatelessWidget {
  final TabController _tabController;
  final List<TabRow> _tabs;
  BuildSilverApp(this._tabController, this._tabs);
  @override
  Widget build(BuildContext context) {

      return SliverAppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size(0, 9.h),
          child: Container(
            margin: EdgeInsets.only(left: 10.w),
            child: TabBar(
              physics: const ClampingScrollPhysics(),
              automaticIndicatorColorAdjustment: false,
              controller: _tabController,
              isScrollable: true,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.white,
              labelPadding: EdgeInsets.only(right: 10.w),
              //  indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.red,
              indicator: BubbleTabIndicator(
                indicatorHeight: 40.w,
                indicatorColor: Colors.transparent,
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
              ),
              tabs: _tabs.map(
                    (e) => Tab(
                    child: _tabController.index == e.num
                        ? Card(
                      color: primaryColor,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(9.r),
                        child: Row(
                          children: [
                            ImageIcon(AssetImage(e.imagePath!),
                                color: _tabController.index == e.num
                                    ? whiteColor
                                    : Color(int.parse(e.color!))),
                            gapW5,
                            Text(
                                e.label,
                                style: TextStyles.tabBarStyle
                            )
                          ],
                        ),
                      ),
                    )
                        : Card(
                      color: Colors.white,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.r),
                          side: const BorderSide(
                              color: Color.fromRGBO(0, 0, 0, 0.08))),
                      child: Padding(
                        padding: EdgeInsets.all(9.r),
                        child: Row(
                          children: [
                            ImageIcon(AssetImage(e.imagePath!),
                                color: _tabController.index == e.num
                                    ? whiteColor
                                    : Color(int.parse(e.color!))),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              e.label,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12.5.sp,
                                  fontWeight: FontWeight.w400,
                                  color: tabBarColor),
                            )
                          ],
                        ),
                      ),
                    )),
              )
                  .toList(),
            ),
          ),
        ),
        pinned: false,
      );
  }
}
