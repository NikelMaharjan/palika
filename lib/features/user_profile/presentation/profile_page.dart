
import '../../../export_pages.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Consumer(
          builder: (context, ref, child) {
            return

              CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: backgroundColor,
                    toolbarHeight: 150.h,
                    flexibleSpace: SafeArea(
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        80.r),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 5.w,
                                    )),
                                child: CircleAvatar(
                                  radius: 60.r,
                                  backgroundImage: const AssetImage(
                                    'assets/user_icons/user.png',),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              SizedBox(width: 22.w,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10.h,),
                                    Text('Prashanna',
                                      style: TextStyle(
                                        color: labelBlack,
                                              fontWeight: FontStyles.medium600,
                                              fontSize: FontSizes.s18,
                                              letterSpacing: 2
                                      ),),
                                    SizedBox(height: 3.h),
                                    const Text('+977*********', style: TextStyle(
                                        color: lightGreyColor,
                                        fontFamily: FontStyles.poppins,
                                        fontWeight: FontStyles.mediumBold),),
                                    SizedBox(height: 3.h),
                                    ElevatedButton(
                                        onPressed: null,
                                        child: Text(
                                          'My Application', style: TextStyles.accTextStyle,)
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  SliverToBoxAdapter(
                    child: BasicTile(width),
                  )

                ]
            );
          }
        ),



    );
  }
}
