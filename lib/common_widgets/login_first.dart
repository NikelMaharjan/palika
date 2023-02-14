import 'package:palikaa/export_pages.dart';




class LoginFirst extends StatelessWidget {
  final bool? isBar;
  final bool? isDialog;
  const LoginFirst({Key? key, this.isBar, this.isDialog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Dialog(
      child: SizedBox(
        height:  420.w,
        width: 376.w,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text('Login',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            letterSpacing: 2,
                            fontWeight: FontWeight.w500,
                            color: greyColor,
                            fontSize: 25.sp),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 70.h,),
            Column(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween,
              children: [
                Container(
                  height: 100.w,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius
                          .circular(50.r),
                      border: Border.all(
                          width: 15.w,
                          color: const Color(
                              0xFF00A651)
                              .withOpacity(
                              0.1)) //90
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius
                            .circular(50.r),
                        color: const Color(
                            0xFF159F59),
                      ),
                      height: 27.w,
                      width: 27.w,
                      child: const Icon(Icons
                          .person_add_alt_1_sharp,
                        color: Colors.white,
                        size: 30,)
                  ),
                ),
                SizedBox(height: 26.h,),
                Text('Please login first',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight
                          .w400,
                      color: greyColor,
                      fontSize: 16.sp),),
                SizedBox(height:  70.h),
                Container(
                  padding: EdgeInsets.only(
                      left: 17.w,
                      right: 17.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius
                          .circular(8.r)
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      if(isDialog == true){
                        Navigator.of(context).pop();
                      }
                   context.pushNamed(AppRoute.login.name);
                    },
                    child: const Text('Login'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
