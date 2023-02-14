import 'package:palikaa/export_pages.dart';



final loadingProvider = StateNotifierProvider<LoadingProvider, bool>((ref) => LoadingProvider(false));

final incrementProvider = StateNotifierProvider<IncrementProvider, int>((ref) => IncrementProvider(1));

class LoadingProvider extends StateNotifier<bool>{
  LoadingProvider(super.state);


  void toggle(){
    state = !state;
  }

}



class IncrementProvider  extends StateNotifier<int>{
  IncrementProvider(super.state);


  void increase(){

    state++;
  }



}