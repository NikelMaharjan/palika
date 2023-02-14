import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final genderProvider = ChangeNotifierProvider.autoDispose((ref) => GenderProvider());

class GenderProvider extends ChangeNotifier{
   bool isMale = false;
   bool isFemale = false;
  void toggleMale(){
    if(isFemale == true){
      isFemale = false;
    }
    isMale = !isMale;
    notifyListeners();
  }

   void toggleFeMale(){
     if(isMale == true){
       isMale = false;
     }
     isFemale = !isFemale;
     notifyListeners();
   }
}