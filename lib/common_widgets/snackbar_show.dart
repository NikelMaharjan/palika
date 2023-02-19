import 'package:palikaa/export_pages.dart';
import 'package:palikaa/features/Janta/darta/presentation/darta_main_page.dart';




class Exceptions {


  static void successShow(BuildContext context, String message) async{
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.green,
        content: Text(message)
    ));


  //  context.goNamed(AppRoute.darta.name);


    Navigator.pop(
      context,
      MaterialPageRoute(builder: (context) =>  DartaMainScreen()),
    );




  }

  static void noteShow(BuildContext context, String message) async{
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 1),
        content: Text(message)
    ));
  }

  static void connectionShow(BuildContext context) async{
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 1),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('check your connection'),
            Icon(Icons.wifi_off_sharp, color: Colors.white,)
          ],
        ),
    ));
  }

  static void failureShow(BuildContext context, String message) async{
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 4),
        backgroundColor: Colors.red,
        content: Text(message)
    ));

    // Navigator.pop(
    //   context,
    //   MaterialPageRoute(builder: (context) =>  DartaMainScreen()),
    // );






  }


}