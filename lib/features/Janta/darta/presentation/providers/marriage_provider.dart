import 'package:palikaa/export_pages.dart';



final bibahaProvider = StateNotifierProvider<BibahaDataProvider, List>((ref) => BibahaDataProvider([]));

class BibahaDataProvider extends StateNotifier<List>{
  BibahaDataProvider(super.state);

  void addData(data){
    state = [...state, data];
  }

  Map get  getMap => state.isNotEmpty ? state.reduce((a,b){
    a.addAll(b);
    return a;
  }) : {};

}

