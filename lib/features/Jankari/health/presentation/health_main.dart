import 'package:palikaa/common_widgets/fixed_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/app_sizes.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/text_styles.dart';
import '../../../core/data/company_data.dart';
import '../../common/sastha_page.dart';
import '../../common/silver_app_bar.dart';
import '../data/health_tab_data.dart';




class HealthMainPage extends StatefulWidget {
  const HealthMainPage({super.key});

  @override

  _HealthMainPageState createState() => _HealthMainPageState();
}

class _HealthMainPageState extends State<HealthMainPage>  with SingleTickerProviderStateMixin {
  late TabController _tabController;



  @override
  void initState() {
    _tabController = TabController(length: health_tab.length, vsync: this);
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
      appBar:  FixedNavAppBar.fixedAppBar(context: context, label: 'Health'),
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(top: 20.h),
              color: whiteColor,
              height: 220.h,
              width: 414.w,
              padding: EdgeInsets.only(top: 18.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundImage: const AssetImage('assets/karnali/user/sachib.jpg'),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'बाबु काजी देवकोटा',
                    style: TextStyle(
                      color: textBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    'विभाग प्रमुख',
                    style: TextStyle(
                      color: textBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 15.h),
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
          BuildSilverApp(_tabController, health_tab),
          SliverFillRemaining(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                SasthaPage(hospital),
                SasthaPage(healthPost),
                SasthaPage(pvtHospital),
              ],
            ),
          ),
        ],
      ),
    );
  }

}












