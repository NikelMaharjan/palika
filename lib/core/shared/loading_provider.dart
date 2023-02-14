import 'package:flutter_riverpod/flutter_riverpod.dart';




final isLoad = StateNotifierProvider.autoDispose<LoadProvider, bool>((ref) => LoadProvider(false));

class LoadProvider extends StateNotifier<bool>{
  LoadProvider(super.state);

  void toggle(){
    state = !state;
  }

}