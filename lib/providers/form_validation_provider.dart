







import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final validateProvider = ChangeNotifierProvider.autoDispose((ref) => ValidateProvider());


class ValidateProvider extends ChangeNotifier{

  AutovalidateMode mode = AutovalidateMode.disabled;
  bool visible = true;

  void enable(){

    mode = AutovalidateMode.onUserInteraction;
    notifyListeners();

  }


  void disable(){

    mode = AutovalidateMode.disabled;
    notifyListeners();

  }


  void password(){


    if(visible == true){
      visible = false;
    }
    else {
      visible = true;
    }
    notifyListeners();

  }




}