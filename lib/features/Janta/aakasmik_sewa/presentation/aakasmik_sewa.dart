import '../../../../export_pages.dart';



class AakasmikSewa extends StatelessWidget {


final List<Data> data;
const AakasmikSewa(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 15.w, right: 15.w, top: 30.w),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index) => SizedBox(
            height: 81.h,
            width: 374.w,
            child: Card(
              elevation: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 11.w),
                        padding: EdgeInsets.only(top: 14.h),
                        child: Text(
                          data[index].label,
                          style: TextStyles.headTextStyle1
                        ),
                      ),
                      SizedBox(height: 9.h,),
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        child: Row(
                          children: [
                            const Icon(Icons.location_on, color: primaryColor, size: 20,),
                           gapH4,
                            Text(
                              data[index].address!,
                              textAlign: TextAlign.start,
                              style: TextStyles.subTitleStyle
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  InkK(
                    splash: Colors.grey,
                    onTap: (){
                      launchUrl(Uri.parse('tel://${data[index].phone}'));
                    },
                    center: true,
                    child: Container(
                      margin: EdgeInsets.only(right: 10.w),
                      height: 35.h,
                      width: width < 382 ? 105.h :  94.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: primaryColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 5.w),
                              child: const Icon(Icons.phone, size: 20,  color: primaryColor,)),
                          SizedBox(width: 2.w,),
                          Text(
                            "Call Now",
                            style: TextStyles.subTitleStyle
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
