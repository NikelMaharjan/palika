import 'package:palikaa/export_pages.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../tourist_spots/presentation/paryatakya_sthalPage.dart';


class CompanyInfo extends StatelessWidget {
  final Company company;
  const CompanyInfo(this.company, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          FixedNavAppBar.fixedAppBar(context: context, label: company.label),
      body: ListView(
        children: [
          SizedBox(
            height: 195.h,
            width: 414.w,
            child: Stack(
              children: [
                CachedNetworkImage(
                  errorWidget: (c, d, s) {
                    return Image.asset(
                      'assets/widget_icons/office.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    );
                  },
                  imageUrl: company.imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 40.h,
                  left: 20.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        company.label,
                        style:TextStyles.drawerStyle
                      ),
                      Text(
                          company.address,
                          style: TextStyles.tabBarStyle
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(17.r),
                child:  Text(
                  'Do ullamco ex velit anim do proident exercitation et anim tempor. Lorem sunt deserunt labore non excepteur veniam enim quis.',
                  style: TextStyle(
                      color: const Color.fromRGBO(0, 0, 0, 0.56), fontSize: 17.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  children: [
                    _buildRow('Do ullamco ex velit anim do proident exercitation'),
                    _buildRow('et anim tempor. Lorem sunt deserunt labore non'),
                    _buildRow('excepteur veniam enim quis.'),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17, top: 12),
                child: Text(
                  'Lorem sunt deserunt labore non excepteur veniam enim quis.',
                  style: TextStyle(
                      color: const Color.fromRGBO(0, 0, 0, 0.56), fontSize: 17.sp),
                ),
              ),
            ],
          ),
          Container(
            height: 350,
            padding: EdgeInsets.symmetric(horizontal: 19.w),
            margin: EdgeInsets.only(top: 20.h),
            child: MapSample(
              long: company.long,
              lat: company.lat,
            ),
          ),
        ],
      ),
    );
  }

  Row _buildRow(String label) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyBullet(),
        gapW20,
        Expanded(
          child: Text(
            label,
            style: TextStyle(
                color: const Color.fromRGBO(0, 0, 0, 0.56), fontSize: 15.sp),
          ),
        )
      ],
    );
  }
}

class MyBullet extends StatelessWidget {
  const MyBullet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.0,
      width: 5.0,
      decoration: const BoxDecoration(
        color: blackColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
