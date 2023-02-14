import '../../../../core/data/service_data.dart';
import '../../../../export_pages.dart';
import '../data/aakasmik_tab_data.dart';
import 'aakasmik_sewa.dart';





class AakasmikSewaPage extends HookWidget {
  const AakasmikSewaPage({super.key});

  @override
  Widget build(BuildContext context) {

    final _controller = useTabController(initialLength: aakasmik_tab.length);
    final _index = useState(0);

    _controller.addListener(() {
      _index.value = _controller.index;
    });

    return  Scaffold(
      backgroundColor: backgroundColor,
      appBar:  FixedNavAppBar.fixedAppBar(context: context, label: 'Aakasmik Sewa'),
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          buildSliverAppBarCollapse(_controller),
          SliverFillRemaining(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              children: [
                AakasmikSewa(damkalData),
                AakasmikSewa(bloodService),
                AakasmikSewa(serviceData),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar buildSliverAppBarCollapse(TabController control) {
    return  SliverAppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      bottom: PreferredSize(
        preferredSize: Size(0, 9.h),
        child: TabBar(
          physics: const ClampingScrollPhysics(),
          controller: control,
          isScrollable: true,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.white,
          labelPadding:  EdgeInsets.only(right: 10.w),
          //  indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.red,
          indicator: BubbleTabIndicator(
            indicatorHeight: 40.w,
            indicatorColor: Colors.transparent,
            tabBarIndicatorSize:  TabBarIndicatorSize.tab,
          ),
          tabs: aakasmik_tab.map((e) =>  Tab(
              child: control.index == e.num ? Card(
                color: primaryColor,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 19.w, right: 1.w, top: 9.w, bottom: 9.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(e.imagePath!, color: whiteColor,),
                      SizedBox(width: 5.w,),
                      Text(e.label, style:
                     TextStyles.tabBarStyle
                      )
                    ],
                  ),
                ),
              ): Card(
                color: Colors.white,
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.r),
                    side: const BorderSide(color: Color.fromRGBO(0, 0, 0, 0.08))
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 19.w, right: 1.w, top: 9.w, bottom: 9.w),
                  child: Row(
                    children: [
                      Image.asset(e.imagePath!, color: e.num == 0 ? blackColor: null,),
                      SizedBox(width: 5.w,),
                      Text(e.label, style:
                     TextStyles.tabBarStyle1
                      )
                    ],
                  ),
                ),
              )
          ),).toList(),
        ),
      ),
      pinned: false,
    );
  }
}















