import 'package:easy_localization/easy_localization.dart';
import '../../../export_pages.dart';
import '../application/location_state_notifier.dart';




class JantaJankariPage extends ConsumerWidget {
  final List<ItemModel>  data;
  final bool isJankari;
  JantaJankariPage(this.data, this.isJankari);
  late LocationPermission permission;
  Position? position;
  BuildContext? contextD;
  bool? load;
  @override
  Widget build(BuildContext context, ref) {
    ref.listen(locationProvider, (previous, next) {
      load = next.isLoad;
          showDialog(
              barrierDismissible: false,
              context: context, builder:(context){
                contextD  = context;
      return  AlertDialog(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Loading...',
                style: TextStyle(color: Colors.black, fontSize: 19),),
              SizedBox(width: 20,),
              CircularProgressIndicator(
                color: primaryColor,
              )
            ],
          ),
        );
          });
          if(next.isLoad == false){
            Navigator.of(contextD!).pop();
          }
    });
    final connection = ref.watch(connectionProvider);
    final width = MediaQuery.of(context).size.width;
    return Container(
        margin:   EdgeInsets.only(top: 30.h),
        child: Padding(
          padding:   EdgeInsets.symmetric(horizontal: 10.w),
          child:  GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final dat = data[index];
                    return GestureDetector(
                      onTap: () {
                        dat.onTap!(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Column(
                          children: [
                             InkResponse(
                                    onTap: index == 1 && isJankari ? () async {
                                      if (connection == ConnectivityStatus.ON) {
                                      await  ref.read(locationProvider.notifier).getLocation(context);
                                      if(load == false){
                                        Navigator.of(contextD!).pop();
                                      }
                                      } else {
                                        Exceptions.connectionShow(context);
                                      }
                                    } : () => dat.onTap!(context),
                                    splashFactory: InkRipple.splashFactory,
                                    splashColor: Color(0xFF00A651).withOpacity(
                                        0.3),
                                    radius: 35.r,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              50.r),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.08),
                                              blurRadius: 2.0,
                                            ),
                                          ]
                                      ),
                                      child: Card(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              50.r),
                                        ),
                                        child: Container(
                                          height: width < 384 ? 62.w : 60.w,
                                          width: width < 384 ? 62.w : 60.w,
                                          child: Image.asset(dat.iconPath,
                                            scale: width > 460 ? 2 : width < 384
                                                ? 3.w
                                                : 2.2.w,),
                                        ),
                                      ),
                                    ),

                            ),
                            Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: 7.h),
                                child: Text(tr(dat.label), style: TextStyles.jStyle,
                                  textAlign: TextAlign.center,)
                            ),
                          ],
                        ),
                      ),
                    );
                  }
              )
          ),

    );
  }
}


