import 'package:palikaa/features/Janta/digital_manch/presentation/popular_page.dart';

import '../../../../export_pages.dart';
import 'latest_page.dart';



class WallingMain extends HookWidget {



final List<Tab> _listTabs = [


  const Tab(
    text: 'Popular',
  ),


  const Tab(
    text: 'Latest',
  ),
  ];

   WallingMain({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final _controller = useTabController(initialLength: _listTabs.length);
    final _index = useState(0);


    _controller.addListener(() {
      _index.value = _controller.index;
    });


    return Scaffold(
    appBar:  FixedNavAppBar.fixedAppBar(context: context, label: 'Digital Manch'),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 47.h,
              width: 375.w,
              margin:  EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(
                  23.5.r,
                ),
              ),
              child: Container(
                height: width < 350 ?30.h : 37.h,
                padding: const EdgeInsets.all(5.0),
                width: 173.w,
                child: TabBar(
                  controller: _controller,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      23.5.r,
                    ),
                    color: Colors.white,
                  ),
                  labelStyle: TextStyle(
                    fontSize: 16.sp
                  ),
                  labelColor: primaryColor,
                  unselectedLabelColor: tabBarColor,
                  tabs: _listTabs
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                 PopularPage(),
                 const LatestPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}