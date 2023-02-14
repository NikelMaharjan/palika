import 'package:palikaa/export_pages.dart';
import 'package:cached_network_image/cached_network_image.dart';




class SasthaPage extends StatelessWidget {
  final List<Company> dat;
  const SasthaPage(this.dat, {super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: dat.length,
        itemBuilder: (context, index){
          return Container(
            width: 374.w,
            margin: EdgeInsets.only(left: 19.w, right: 19.w, bottom: 8.h, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: whiteColor,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.08),
                  spreadRadius: 4,
                  blurRadius: 2,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  height: 81.w,
                  width: 81.w,
                  margin: EdgeInsets.only(left: 11.w, top: 11.h, bottom: 22.h, right: 17.w),
                  decoration: BoxDecoration(
                    color: mediumWhite,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: CachedNetworkImage(
                      errorWidget: (context, s, d){
                        return Image.asset('assets/info_icons/company_name.png');
                      },
                      imageUrl: dat[index].imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 11.h, left: 7.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          dat[index].label,
                          style: TextStyles.labelStyle1
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            dat[index].address,
                            style: TextStyles.jStyle
                          ),
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(
                                side: BorderSide(
                                  color: Colors.red,
                                  width: 2.w,
                                )),
                          ),
                          onPressed: () {
                            context.pushNamed(AppRoute.healthDetail.name, extra: dat[index]);
                          },
                          child: Text(
                            'View on map',
                            style: TextStyles.jStyle
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}



