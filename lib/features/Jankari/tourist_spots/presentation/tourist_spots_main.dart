import 'package:palikaa/export_pages.dart';
import '../data/tourist_tab_data.dart';
import 'paryatakya_sthalPage.dart';




class TouristMainPage extends StatefulWidget {
 final Position position;
  const TouristMainPage(this.position, {super.key});
  @override
  _TouristMainPageState createState() => _TouristMainPageState();
}

class _TouristMainPageState extends State<TouristMainPage>  with SingleTickerProviderStateMixin {
 late TabController _tabController;


  @override
  void initState() {
    _tabController = TabController(length: tourist_tab.length, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  void _handleTabSelection() {
    setState(() {
    });
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  FixedNavAppBar.fixedAppBar(context: context, label: 'Tourist Spots'),
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          buildSliverAppBarCollapse(),
          SliverFillRemaining(
            child: Consumer(
              builder: (context, ref, child) {

                return TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  children: [
                        ParyaTakiyaPage(lat: widget.position.latitude, long: widget.position.longitude),
                        ParyaTakiyaPage(lat: widget.position.latitude, long: widget.position.longitude),
                        ParyaTakiyaPage(lat: widget.position.latitude, long: widget.position.longitude),
                        ParyaTakiyaPage(lat: widget.position.latitude, long: widget.position.longitude),
                  ],
                );
              }
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar buildSliverAppBarCollapse() {
    return  SliverAppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      bottom: PreferredSize(
        preferredSize: Size(0, 9.h),
        child: Container(
          margin: EdgeInsets.only(left: 10.w),
          height: 60.h,
          child: TabBar(
            physics: const ClampingScrollPhysics(),
            controller: _tabController,
            isScrollable: true,
            labelPadding:  EdgeInsets.only(right: 10.w),
            indicator: BubbleTabIndicator(
              indicatorHeight: 40.w,
              indicatorColor: backgroundColor,
              tabBarIndicatorSize:  TabBarIndicatorSize.tab,
            ),
            tabs: tourist_tab.map((e) =>  Tab(
                child:_tabController.index == e.num ? Card(
                  color: primaryColor,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.r),

                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(9.r),
                    child: Text(e.label, style: TextStyle(color: Colors.white, fontFamily: 'Poppins',
                        fontSize: 12.5.sp,
                        fontWeight: FontWeight.w400),  textAlign: TextAlign.center),
                  ),
                ): Card(
                  color: Colors.white,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.r),
                      side: const BorderSide(color: greyColor)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(9.r),
                    child: Text(e.label, style: TextStyle(fontFamily: 'Poppins',
                        fontSize: 12.5.sp,
                        fontWeight: FontWeight.w400, color: tabBarColor
                    ), textAlign: TextAlign.center,),
                  ),
                )
            ),).toList(),
          ),
        ),
      ),
      pinned: false,
    );
  }
}






