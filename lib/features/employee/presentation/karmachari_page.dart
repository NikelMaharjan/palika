import 'package:palikaa/constants/colors.dart';
import 'package:palikaa/constants/text_styles.dart';
import 'package:palikaa/features/pratinidhi/data/user_data.dart';
import 'package:palikaa/features/employee/presentation/karmachari_widget.dart';
import 'package:palikaa/features/employee/presentation/ward_karmachari.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class KarmachariPage extends StatefulWidget {
  const KarmachariPage({super.key});




  @override
  _KarmachariPageState createState() => _KarmachariPageState();
}

class _KarmachariPageState extends State<KarmachariPage>
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
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          children: [
            Container(
              height: 47.h,
              width: 375.w,
              margin:  EdgeInsets.symmetric(horizontal: 15.w),
              decoration: BoxDecoration(
                color: whiteShade,
                borderRadius: BorderRadius.circular(
                  23.5.r,
                ),
              ),
              child: Container(
                height: 35.h,
                padding: const EdgeInsets.all(5.0),
                width: 173.w,
                child: TabBar(
                  controller: _tabController,
                  labelStyle: TextStyles.tabBarStyle,

                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        20.r,
                    ),
                    color: whiteColor,
                  ),
                  labelColor: primaryColor,
                  unselectedLabelColor: tabBarColor,
                  tabs: const [
                    Tab(
                      text: 'Municipality',
                    ),
                    Tab(
                      text: 'Ward',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                 KarmaChari(minicipalityKarma),
                 WardKarmaChari(wardKarma),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}