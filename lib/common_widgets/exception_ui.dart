import 'package:palikaa/constants/app_sizes.dart';
import 'package:palikaa/export_pages.dart';




class ExceptionUi extends StatelessWidget {
  final String message;
  final dynamic provider;
  const ExceptionUi(this.message, this.provider, {super.key});
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.info, size: 50, color: Color(0xFFf0541e),),
          gapH10,
          Text('Internal Server Error', style: TextStyle(fontSize: 18.sp, color: Colors.grey, letterSpacing: 1, fontWeight: FontWeight.w400),),
          gapH10,
          Consumer(
            builder: (context, ref, child){
              return ElevatedButton(
                onPressed: (){
                ref.refresh(provider);
            }, child: const Text('Try Again'));
              }
          )
        ],
      )
      ,)
    );
  }
}
