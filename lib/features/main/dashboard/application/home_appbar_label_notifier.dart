import 'package:flutter_riverpod/flutter_riverpod.dart';




class LabelProvider extends StateNotifier<String>{
  LabelProvider(super.state, this.index){
    getString();
  }

  int index;

  void getString(){
    if(index == 0){
      state= 'Digital Palika';
    }else if(index == 1){
      state =  'Chat';
    }else if(index == 2){
      state = 'NitiNiyam';
    }else if(index == 3){
      state =  'Notice';
    }else if(index == 4){
      state == 'Profile';
    }
  }


}




