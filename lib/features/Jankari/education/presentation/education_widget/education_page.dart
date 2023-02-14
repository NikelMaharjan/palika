import '../../../../../export_pages.dart';


class KarkhanaModel{
  final String iconName;
  final Color bgColor;
  final void Function(BuildContext) onTap;
  final String label;

  KarkhanaModel({
    required this.label,
    required this.iconName,
    required this.onTap,
    required this.bgColor});
}




class EducationPage extends StatelessWidget {


  final  List<KarkhanaModel> _karsModels = [
    KarkhanaModel(
        iconName: 'assets/info_icons/science.png',
        bgColor: primaryColor,
        onTap: (context){
          context.pushNamed(AppRoute.educationDetail.name, extra: 'https://content.jwplatform.com/videos/eapV5RMm-w8fuUjtm.mp4');
        },
        label: 'Science'
    ),
    KarkhanaModel(
        iconName: 'assets/info_icons/computer.png',
        bgColor: const Color(0xFFFF8D54),
        onTap: (context){
          context.pushNamed(AppRoute.educationDetail.name, extra: 'https://content.jwplatform.com/videos/voxCZydO-BAFlGz8T.mp4');
        },
        label: 'Computer'
    ),

    KarkhanaModel(
        iconName: 'assets/info_icons/make.png',
        bgColor: const Color(0xFFBC6996),
        onTap: (context){
          context.pushNamed(AppRoute.educationDetail.name, extra: 'https://content.jwplatform.com/videos/M2LrJVwo-thqMe9s5.mp4');
        },
        label: 'Math'
    ),

  ];

   EducationPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(8.r),
          child: GridView.builder(
              itemCount: _karsModels.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 1
              ),
              itemBuilder: (context, index){
                final kar = _karsModels[index];
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 1
                      ),
                      onPressed: () =>  kar.onTap(context),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: kar.bgColor,
                            radius: 40.r,
                            child: ImageIcon(AssetImage(kar.iconName, ), color: Colors.white, size: 40,),
                          ),
                          SizedBox(height: 16.h,),
                          Text(kar.label,
                            style: TextStyles.drawerStyle1
                          )
                        ],
                      )
                  ),
                );
              }
          ),
        )
    );
  }
}