import 'package:palikaa/constants/colors.dart';
import 'package:palikaa/constants/font_styles.dart';
import 'package:palikaa/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_version_checker/flutter_app_version_checker.dart';
import 'package:open_store/open_store.dart';



class VersionService{

 static const String avalaible  = 'A new Version of App is available';
 static const String would  = 'Would you like to update it now ?';
 static const String update  = 'Update Available';

static  Future<void> checkVersion(BuildContext context) async {
    final _checker = AppVersionChecker();
    try{
      final response = await _checker.checkUpdate();
      if(response.canUpdate){
        showDialog(context: context, builder: (context)=> AlertDialog(
          title: Text(update, style: TextStyles.labelStyle1,),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(avalaible, style: TextStyles.accTextStyle,),
             Text('please update !', style: TextStyles.accTextStyle,),
            ],
          ),
          actions: [
            TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                  OpenStore.instance.open(
                      androidAppBundleId: 'com.mindrisers.palikaa.org'
                  );
                }, child:const Text('Update Now', style: TextStyle(color: primaryColor, fontWeight: FontStyles.medium400),))
          ],
        ));
      }else{

      }
    }catch (err){

    }
  }

}