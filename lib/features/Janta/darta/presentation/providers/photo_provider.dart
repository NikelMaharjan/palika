import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';




final imageProvider = ChangeNotifierProvider((ref) => Image1Provider());

class Image1Provider extends ChangeNotifier{
  XFile? image1;
  XFile? image2;


  void selectImage(bool isCamera) async{
    if( isCamera == true){
      final ImagePicker _picker = ImagePicker();
      image1 = await _picker.pickImage(source: ImageSource.camera);
      notifyListeners();
    }else {
      final ImagePicker _picker = ImagePicker();
      image1 = await _picker.pickImage(source: ImageSource.gallery);
      notifyListeners();
    }

  }


  void selectImage1(bool isCamera) async{
    if( isCamera == true){
      final ImagePicker _picker = ImagePicker();
      image2 = await _picker.pickImage(source: ImageSource.camera);
      notifyListeners();
    }else {
      final ImagePicker _picker = ImagePicker();
      image2 = await _picker.pickImage(source: ImageSource.gallery);
      notifyListeners();
    }

  }

}