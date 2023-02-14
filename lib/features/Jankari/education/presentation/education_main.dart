import 'package:palikaa/features/Jankari/common/sastha_page.dart';
import '../../../../export_pages.dart';
import '../../common/silver_app_bar.dart';
import '../data/education_data.dart';
import 'education_widget/education_page.dart';

class EducationMainPage extends StatefulWidget {
  const EducationMainPage({super.key});

  @override
  _EducationMainPageState createState() => _EducationMainPageState();
}

class _EducationMainPageState extends State<EducationMainPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: edu_tab.length, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FixedNavAppBar.fixedAppBar(context: context, label: 'Education'),
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 20.h),
              color: Colors.white,
              height: 220.h,
              width: 414.w,
              padding: EdgeInsets.only(top: 18.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundImage: const AssetImage('assets/images/User-Icon.png'),
                  ),
                 gapH8,
                  Text(
                    'हरिप्रसाद श्रेष्ठ',
                    style: TextStyles.drawerStyle1
                  ),
                  Text(
                    'विभाग प्रमुख',
                    style: TextStyle(
                      color: textBlack,
                      fontWeight: FontStyles.medium600,
                      fontSize: FontSizes.s12,
                    ),
                  ),
                  gapH16,
                  SizedBox(
                    width: 323.w,
                    height: 54.h,
                    child: Text(
                      'नमस्ते मेरो बिभाग मा स्वागत छ यहाहरुलाई । यहाहरु र हामी बिचको दुरी घटाउन यो सेवा सुरु गरियको हो....',
                      textAlign: TextAlign.center,
                      style: TextStyles.headTextStyle1
                    ),
                  ),
                ],
              ),
            ),
          ),
          BuildSilverApp(_tabController, edu_tab),
          SliverFillRemaining(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                EducationPage(),
                SasthaPage(sastha),
                SasthaPage(balBikash),
                SasthaPage(training),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
