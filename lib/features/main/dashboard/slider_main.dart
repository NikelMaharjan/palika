import '../../../core/shared/index_provider.dart';
import '../../../export_pages.dart';

class MainSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Consumer(builder: (context, ref, child) {
      return SliverToBoxAdapter(
        child: width > 600
            ? Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.h),
                color: backgroundColor,
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        child: CarouselSlider(
                          options: CarouselOptions(
                              pauseAutoPlayOnTouch: true,
                              enlargeCenterPage: true,
                              viewportFraction: 1,
                              aspectRatio: 18 / 8,
                              autoPlay: true,
                              onPageChanged: (int index, reason) {
                                ref
                                    .read(sliderIndexProvider.notifier)
                                    .changeIndex(index);
                              }),
                          items: [
                            buildContainer2( dashData[0].imagePath!,
                                dashData[0].label, dashData[0].detail!),
                            buildContainer2(dashData[1].imagePath!,
                                dashData[1].label, dashData[1].detail!),
                            buildContainer2( dashData[2].imagePath!,
                                dashData[2].label, dashData[2].detail!),
                            buildContainer2( dashData[3].imagePath!,
                                dashData[3].label, dashData[3].detail!),
                            buildContainer2(dashData[4].imagePath!,
                                dashData[4].label, dashData[4].detail!),
                          ],
                        )),
                    SizedBox(height: 10.h),
                    Consumer(builder: (context, ref, child) {
                      final _currentIndex = ref.watch(sliderIndexProvider);
                      return AnimatedSmoothIndicator(
                          effect: SlideEffect(
                              spacing: 8.0,
                              radius: 4.0,
                              dotWidth: 10.0,
                              dotHeight: 4.0,
                              paintStyle: PaintingStyle.fill,
                              strokeWidth: 1.5,
                              dotColor: greyColor,
                              activeDotColor: primaryColor
                          ),
                          activeIndex: _currentIndex,
                          count: 3);
                    })
                  ],
                ),
              )
            : Container(
                margin: EdgeInsets.only(top: 10.h),
                color: Color(0xFFF6F6F6),
                child: Column(
                  children: [
                    Container(
                        height: 160.w,
                        width: 391.w,
                        child: CarouselSlider(
                          options: CarouselOptions(
                              pauseAutoPlayOnTouch: true,
                              enlargeCenterPage: true,
                              viewportFraction: 1,
                              autoPlay: true,
                              onPageChanged: (int index, reason) {
                                ref
                                    .read(sliderIndexProvider.notifier)
                                    .changeIndex(index);
                              }),
                          items: [
                            _buildContainer(width, dashData[0].imagePath!,
                                dashData[0].label, dashData[0].detail!),
                            _buildContainer(width, dashData[1].imagePath!,
                                dashData[1].label, dashData[1].detail!),
                            _buildContainer(width, dashData[2].imagePath!,
                                dashData[2].label, dashData[2].detail!),
                            _buildContainer(width, dashData[3].imagePath!,
                                dashData[3].label, dashData[3].detail!),
                            _buildContainer(width, dashData[4].imagePath!,
                                dashData[4].label, dashData[4].detail!),
                          ],
                        )),
                    SizedBox(height: 10.h),
                    Consumer(builder: (context, ref, child) {
                      final _currentIndex = ref.watch(sliderIndexProvider);
                      return AnimatedSmoothIndicator(
                          effect: SlideEffect(
                              spacing: 8.0,
                              radius: 4.0,
                              dotWidth: 10.0,
                              dotHeight: 4.0,
                              paintStyle: PaintingStyle.fill,
                              strokeWidth: 1.5,
                              dotColor: greyColor,
                              activeDotColor: primaryColor
                          ),
                          activeIndex: _currentIndex,
                          count: 3);
                    })
                  ],
                ),
              ),
      );
    });
  }

  Container buildContainer2(String imageUrl, String label, String detail) {
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14.r),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              width: 390.w,
              height: 90.w,
            ),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(left: 6.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(
                        color: whiteColor,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 40.sp),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                      width: 226.w,
                      child: Text(
                        detail,
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400),
                        maxLines: 2,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildContainer(
      double width, String imageUrl, String label, String detail) {
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14.r),
            child: Image.asset(
              imageUrl,
              height: 160.w,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: width > 382 ? 10.w  : width < 384 ? 10.w : 40.w,
            child: Container(
              margin: EdgeInsets.only(left: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.black,
                    child: Text(
                      label,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Container(
                      width: 250.w,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        color: primaryColor,
                        child: Text(
                          detail,
                          style: TextStyle(
                              color:  Colors.white,
                              fontSize: width< 384 ? 10.sp : 11.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400),
                          maxLines: 3,
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
