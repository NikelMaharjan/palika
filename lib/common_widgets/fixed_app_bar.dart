import 'package:easy_localization/easy_localization.dart';

import '../export_pages.dart';
import '../features/main/dashboard/application/providers.dart';



class FixedNavAppBar{
 static PreferredSizeWidget fixedAppBar({Function?  onTapNav,
    required BuildContext context, required String label, Widget? currentWidget, bool? isLoad}){

    final width = MediaQuery.of(context).size.width;

    return  PreferredSize(
        preferredSize: Size(414.w, 60.w),
        child: Container(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: backgroundColor,
              bottomOpacity: 0.0,
              centerTitle: true,
              titleSpacing: 0,
              elevation: 0,
              title: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22.r),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.08),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(2, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: InkWell(
                      splashColor: Colors.grey,
                      onTap: (){
                        if(isLoad == false || isLoad == null){
                          Navigator.of(context).pop();
                        }
                      },
                      child: CircleAvatar(
                        backgroundColor: const Color(0xFFF1F1F1),
                        radius:width < 382 ? 20.r : 22.r,
                        child: Icon(Icons.arrow_back,
                          color: Colors.black,
                        size:22.w,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 37.w),
                    width: 212.w,
                    child: Text(
                      tr(label),
                      textAlign: TextAlign.center,
                      style: TextStyles.appBarStyle
                    ),
                  ),
                ],
              ),

            )
        )
    );
  }



}



class FixedAppBar extends ChangeNotifier{

  int labelLength = 12;

  void getLabel(String label){
    labelLength = label.length;
    notifyListeners();
  }


 static PreferredSizeWidget fixedAppBar({ Function?  onTapNav,required BuildContext context,required String label, bool? isLoad}){
    final width = MediaQuery.of(context).size.width;
    return   PreferredSize(
      preferredSize: Size(414.w, 60.w),
      child: Container(
        constraints: const BoxConstraints(
            maxWidth: 400
        ),
        child: Consumer(
          builder: (context, ref, child) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: backgroundColor,
                bottomOpacity: 0.0,
                centerTitle: true,
                titleSpacing: 0,
                elevation: 0,
                title: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.r),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.08),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(2, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xFFF1F1F1),
                        radius: 22.r,
                        child: IconButton(
                          icon: ImageIcon(
                            const AssetImage('assets/icons/burger-menu.png'),
                            size: 18.h,
                          ),
                          onPressed: () {
                            if(isLoad == false || isLoad == null){
                              onTapNav!();
                            }

                          },
                          color: Colors.black,),
                      ),
                    ),
                    SizedBox(width: label.length > 10 ? 50.w : 92.w,),
                    Row(
                      children: [
                        Image.asset('assets/icons/logo_2.png',
                          height: 30.w,
                          width: 30.w,
                        ),
                        SizedBox(width: 6.w,),
                        Text(
                          tr(label), style: TextStyle(
                            color: primaryColor,
                            fontFamily: FontStyles.roboto,
                            fontSize: width > 382 ? 17.sp : 20.sp,
                            fontWeight: FontStyles.bold900
                        ),),
                      ],
                    ),
                  ],
                ),
                actions: [
                  Container(
                      margin: EdgeInsets.only(right: 12.w),
                      child: IconButton(
                          onPressed: () => context.pushNamed(AppRoute.search.name),
                          icon: Icon(Icons.search, color: greyColor,
                            size: 30.h,))
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 4.w),
                    child: CircleAvatar(
                      radius: 22.r,
                      backgroundColor: primaryColor,
                      child: Stack(
                        children: [
                          Container(
                              alignment: Alignment.center,
                              child: IconButton(
                                onPressed: () {
                                    showDialog(
                                        context: context, builder: (context) =>
                                        const LoginFirst(isDialog: true,)
                                    );
                                  },
                                icon: Icon(
                                  Icons.notifications_outlined, size: 22.h,),
                                color: Colors.white,)),
                          // Positioned(
                          //   top: 0,
                          //   right: 1.w,
                          //   child: Container(
                          //     alignment: Alignment.center,
                          //     width: 19.w,
                          //     height: 19.w,
                          //     decoration: BoxDecoration(
                          //         border: Border.fromBorderSide(
                          //             BorderSide(color: Colors.white)),
                          //         borderRadius: BorderRadius.circular(50.r),
                          //         color: Color(0xFFEB5757)
                          //     ),
                          //     child: Text('7', style: TextStyle(
                          //         color: Colors.white, fontSize: 10.sp),),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            );
          }
        ),
      ),
    );
  }





}


final labelProviders = ChangeNotifierProvider((ref) => FixedAppBar());


final drawerProvider = StateNotifierProvider<IsDrawerOpen, bool>((ref) => IsDrawerOpen());


class IsDrawerOpen extends StateNotifier<bool>{
  IsDrawerOpen() : super( false);



  void toggle(){
    state = !state;
  }

}
