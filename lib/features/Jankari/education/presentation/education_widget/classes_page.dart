import '../../../../../export_pages.dart';





class KarkhanaModel{
  final String iconName;
  final Color bgColor;
  final VoidCallback onTap;
  final String label;

  const KarkhanaModel({
    required this.label,
    required this.iconName,
    required this.onTap,
    required this.bgColor});
}


final  List<KarkhanaModel> _karsModels = [
  KarkhanaModel(
      iconName: 'assets/icons/istockphoto-1205276835-612x612.jpg',
      bgColor: primaryColor,
      onTap: (){

      },
      label: 'Class 1'
  ),
  KarkhanaModel(
      iconName: 'assets/icons/istockphoto-1205276835-612x612.jpg',
      bgColor: primaryColor,
      onTap: (){

      },
      label: 'Class 2'
  ),

  KarkhanaModel(
      iconName: 'assets/icons/istockphoto-1205276835-612x612.jpg',
      bgColor: primaryColor,
      onTap: (){

      },
      label: 'Class 3'
  ),
  KarkhanaModel(
      iconName: 'assets/icons/istockphoto-1205276835-612x612.jpg',
      bgColor: primaryColor,
      onTap: (){

      },
      label: 'Class 4'
  ),
  KarkhanaModel(
      iconName: 'assets/icons/istockphoto-1205276835-612x612.jpg',
      bgColor: primaryColor,
      onTap: (){

      },
      label: 'Class 5'
  ),
  KarkhanaModel(
      iconName: 'assets/icons/istockphoto-1205276835-612x612.jpg',
      bgColor: primaryColor,
      onTap: (){

      },
      label: 'Class 6'
  ),
  KarkhanaModel(
      iconName: 'assets/icons/istockphoto-1205276835-612x612.jpg',
      bgColor: primaryColor,
      onTap: (){

      },
      label: 'Class 7'
  ),

];



class ClassPage extends StatelessWidget {
final String videoUrl;
const ClassPage(this.videoUrl, {super.key});
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
                      onPressed: ()async{
                        if(index == 0){
                         context.pushNamed(AppRoute.classVideo.name, extra: videoUrl);
                        }

                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/istockphoto-1205276835-612x612.jpg'),
                          SizedBox(height: 16.h,),
                          Text(kar.label,
                            style: TextStyles.drawerStyle1
                            ,)
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