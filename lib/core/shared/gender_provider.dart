import 'package:palikaa/export_pages.dart';



class GenderState{

  bool isMale;
  bool isFemale;
  bool isOthers;

  GenderState({
    required this.isFemale,
    required this.isMale,
    required this.isOthers
  });



}


class GenderController extends ChangeNotifier{
  GenderState  genderState = GenderState(
      isFemale: false,
      isMale: false,
      isOthers: false
  );

  void toggle (){
    genderState.isMale = !genderState.isMale;
    genderState.isFemale = false;
    genderState.isOthers = false;
    notifyListeners();
  }

  void toggle1 (){
    genderState.isFemale = !genderState.isFemale;
    genderState.isOthers = false;
    genderState.isMale = false;
    notifyListeners();

  }

  void toggle2 (){
    genderState.isMale = false;
    genderState.isFemale = false;
    genderState.isOthers =  !genderState.isOthers;
    notifyListeners();

  }


}

