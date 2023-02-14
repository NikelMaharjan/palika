import '../../../export_pages.dart';


class JankariComponent extends StatelessWidget {
  final List<Data> data;
  final String label;
  final bool? isFarm;
  const JankariComponent({super.key, required this.data, required this.label, this.isFarm});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: FixedNavAppBar.fixedAppBar(context: context, label: label),
      body: Container(
        margin: EdgeInsets.only(top: 10.h, left: 17.w, right: 17.w),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final dat = data[index];
            return SizedBox(
              height: width < 350 ? 220 : 150.w,
              width: 374.w,
              child: Card(
                elevation: 1,
                child: Container(
                  child: width < 350
                      ? Column(
                          children: [
                            Container(
                              height: 118.h,
                              width: double.infinity,
                              padding: EdgeInsets.only(
                                  left: 14.w,
                                  top: 14.h,
                                  right: 12.w,
                                  bottom: 14.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.r),
                                child: Image.asset(
                                  dat.imagePath!,
                                  fit: BoxFit.cover,
                                  width: 125.w,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20, top: 10),
                              padding: EdgeInsets.only(top: 14.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.only(left: 2.w),
                                    child: Text(
                                      dat.label,
                                      style: Theme.of(context).textTheme.labelSmall
                                  )),
                                  gapH8,
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        size: 15,
                                        color: primaryColor,
                                      ),
                                     gapW4,
                                      Text(
                                        dat.address!,
                                        style: Theme.of(context).textTheme.titleSmall
                                      )
                                    ],
                                  ),
                                 gapH12,
                                  SizedBox(
                                    width: 245.w,
                                    child: Row(
                                      children: [
                                        InkK(
                                          onTap: () {
                                            _buildShowDialog(
                                                context, dat, width);
                                          },
                                          splash: Colors.grey,
                                          child: Container(
                                            height: 32.h,
                                            width: 92.w,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4.r),
                                                border: Border.all(
                                                    width: 1,
                                                    color: primaryColor)),
                                            child: Row(
                                              children: [
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        left: 5.w),
                                                    child: const Icon(
                                                      Icons.location_on,
                                                      size: 15,
                                                      color: primaryColor,
                                                    )),
                                               gapW4,
                                                Text(
                                                  "Location",
                                                  style: Theme.of(context).textTheme.titleSmall
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        InkK(
                                          onTap: () {
                                            if (isFarm == true) {
                                              _buildShowAlertDialog(
                                                  context, dat);
                                            } else {
                                              _buildShowDialog(
                                                  context, dat, width);
                                            }
                                          },
                                          splash: Colors.grey,
                                          child: Container(
                                            height: 32.h,
                                            width: 92.w,
                                            decoration: BoxDecoration(
                                                color: primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(4.r),
                                                border: Border.all(
                                                    width: 1,
                                                    color: primaryColor)),
                                            child: Row(
                                              children: [
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        left: 10.w),
                                                    child: const Icon(
                                                      Icons.remove_red_eye,
                                                      size: 15,
                                                      color: Colors.white,
                                                    )),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  "Details",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.sp),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              height: 118.h,
                              width: 125.w,
                              padding: EdgeInsets.only(
                                  left: 14.w,
                                  top: 14.h,
                                  right: 12.w,
                                  bottom: 14.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.r),
                                child: Image.asset(
                                  dat.imagePath!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 14.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 240.w,
                                    margin: EdgeInsets.only(left: 2.w),
                                    child: Text(
                                      dat.label,
                                      maxLines: 2,
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 14.sp,
                                          fontFamily: 'Roboto',
                                          color: labelBlack
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        size: 15,
                                        color: primaryColor,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Text(
                                        dat.address!,
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: primaryColor,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  SizedBox(
                                    width: 245.w,
                                    child: Row(
                                      children: [
                                        InkK(
                                          onTap: () {
                                            _buildShowDialog(
                                                context, dat, width);
                                          },
                                          splash: Colors.grey,
                                          child: Container(
                                            height: 32.h,
                                            width: 92.w,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(4.r),
                                                border: Border.all(
                                                    width: 1,
                                                    color: primaryColor)),
                                            child: Row(
                                              children: [
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        left: 5.w),
                                                    child: const Icon(
                                                      Icons.location_on,
                                                      size: 15,
                                                      color: primaryColor,
                                                    )),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Text(
                                                  "Location",
                                                  style: TextStyle(
                                                      color: primaryColor,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.sp),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        InkK(
                                          onTap: () {
                                            if (isFarm == true) {
                                              _buildShowAlertDialog(
                                                  context, dat);
                                            } else {
                                              _buildShowDialog(
                                                  context, dat, width);
                                            }
                                          },
                                          splash: Colors.grey,
                                          child: Container(
                                            height: 32.h,
                                            width: 92.w,
                                            decoration: BoxDecoration(
                                                color: primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(4.r),
                                                border: Border.all(
                                                    width: 1,
                                                    color: primaryColor)),
                                            child: Row(
                                              children: [
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        left: 10.w),
                                                    child: const Icon(
                                                      Icons.remove_red_eye,
                                                      size: 15,
                                                      color: whiteColor,
                                                    )),
                                                gapW5,
                                                Text(
                                                  "Details",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.sp
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<dynamic> _buildShowAlertDialog(BuildContext context, Data dat) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              content: Builder(
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            dat.imagePath!,
                          ),
                          Consumer(builder: (context, ref, child) {
                            const countShow = 0;
                            return Row(
                              children: [
                                OutlinedButton(
                                    onPressed: () {
                                      // ref.read(count.notifier).state++;
                                    },
                                    child: const Icon(Icons.add)),
                                const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Text('$countShow')),
                                OutlinedButton(
                                    onPressed: () {
                                      if (countShow > 1) {
                                        //  ref.read(count.notifier).state--;
                                      }
                                    },
                                    child: const Icon(Icons.remove)),
                              ],
                            );
                          }),
                          gapH16,
                          Text(
                            dat.label,
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16.sp),
                          ),
                          gapH16,
                          Text(
                            '${dat.detail!}...',
                            maxLines: 7,
                            style: TextStyle(fontSize: 15.sp),
                          ),
                        gapH10,
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Text('- ${dat.phone!}')),
                          )
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor),
                            onPressed: () {
                              Navigator.of(context).pop();
                              context.pushNamed(AppRoute.login.name);
                            },
                            child: const Text('Add To Cart')),
                      )
                    ],
                  );
                },
              ),
            ));
  }

  Future<dynamic> _buildShowDialog(
      BuildContext context, Data dat, double width) {
    return showDialog(
        context: context,
        builder: (context) => Dialog(
              child: SizedBox(
                height: 135,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                        height: 118.h,
                        width: 124.w,
                        padding: EdgeInsets.only(
                            left: 14.w, top: 14.h, right: 12.w, bottom: 14.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.r),
                          child: Image.asset(dat.imagePath!),
                        )),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 4.w),
                              child: Text(
                                dat.label,
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontFamily: 'Roboto',
                                    overflow: TextOverflow.ellipsis,
                                    color: labelBlack
                                ),
                                maxLines: width < 365 ? 4 : 5,
                              ),
                            ),
                            gapH10,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 15,
                                  color: primaryColor,
                                ),
                                Expanded(
                                  child: Text(
                                    dat.address!,
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: primaryColor,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
