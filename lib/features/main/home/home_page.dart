import 'package:easy_localization/easy_localization.dart';

import '../../../core/shared/index_provider.dart';
import '../../../export_pages.dart';
import 'janta_jankari_page.dart';
import '../data/home_tab_data.dart';
import '../data/janta_jankari_icon_data.dart';

class HomePage extends HookWidget {

  @override
  Widget build(BuildContext context) {



    final _controller = useTabController(initialLength: homeTab.length,);
    final _index = useState(0);


    _controller.addListener(() {
      _index.value = _controller.index;
    });

    return  Scaffold(
      body:
      Consumer(
        builder: (context, ref, child) {
          final width = MediaQuery.of(context).size.width;
          final appIndex = ref.watch(AppBarIndexProvider);
          return DefaultTabController(
            length: 4,
            initialIndex: appIndex,
            child: CustomScrollView(
              physics: appIndex== 2 || appIndex == 3 ? NeverScrollableScrollPhysics(): BouncingScrollPhysics(),
              slivers: [
                MainSlider(),
                buildSliverAppBarCollapse(_controller, width),
                SliverFillRemaining(
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      JantaJankariPage(jantaList, false),
                      JantaJankariPage(jankariList, true),
                      Pratinidhi(),
                      KarmachariPage(),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }

  SliverAppBar buildSliverAppBarCollapse(TabController control, double width) {
    return  SliverAppBar(
      backgroundColor: Colors.transparent,
      bottom: PreferredSize(
        preferredSize: Size(0, 8.w),
        child: Consumer(
            builder: (context, ref, child){
              final appIndex = ref.watch(AppBarIndexProvider);
              return  Container(
                margin: EdgeInsets.only(left: 10.w),
                child: TabBar(
                  physics: BouncingScrollPhysics(),
                  automaticIndicatorColorAdjustment: false,
                  onTap: (index){
                    ref.read(AppBarIndexProvider.notifier).changeIndex(index);
                  },
                  isScrollable: true,
                  unselectedLabelColor: tabBarColor,
                  labelColor: whiteColor,
                  labelPadding:  EdgeInsets.only(right: 2.w),
                  indicatorColor: backgroundColor,
                  tabs: homeTab.map((e) =>  Tab(
                      child: appIndex == e.num ? Card(
                        color: primaryColor,
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(width > 382 ? 9.w: width < 350 ? 4.w : 7.w),
                          child: Row(
                            children: [
                              ImageIcon(AssetImage(e.imagePath!), color: appIndex == e.num
                                  ? Colors.white : Color(int.parse(e.color!))),
                              SizedBox(width: 10.w,),
                              Text(
                                tr(e.label),
                                style: TextStyles.tabBarStyle
                              )
                            ],
                          ),
                        ),
                      ): Card(
                        color: Colors.white,
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(width > 382 ? 9.w: width < 350 ? 4.w : 7.w),
                          child: Row(
                            children: [
                              ImageIcon(AssetImage(e.imagePath!),
                                  color: appIndex == e.num
                                  ? Colors.white : Color(int.parse(e.color!))),
                              SizedBox(width: 10.w,),
                              Text(tr(e.label),
                                  style: TextStyles.tabBarStyle1
                              )
                            ],
                          ),
                        ),
                      )
                  ),).toList(),
                ),
              );
            }
        ),
      ),
      pinned: false,
    );
  }
}
