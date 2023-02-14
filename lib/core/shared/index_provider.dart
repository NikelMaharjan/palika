import 'package:image_picker/image_picker.dart';
import '../../export_pages.dart';




final sliderIndexProvider = StateNotifierProvider<SliderIndexProvider, int>((ref) => SliderIndexProvider());
class SliderIndexProvider extends StateNotifier<int>{
  SliderIndexProvider() : super(0);


 void changeIndex(int index){
   state = index;
 }


}


final AppBarIndexProvider = StateNotifierProvider<AppBarIndex, int>((ref) => AppBarIndex(0));

class AppBarIndex extends StateNotifier<int>{
  AppBarIndex(super.state);

  void changeIndex(int index){
    state = index;
  }

}


final image1Provider =  ChangeNotifierProvider.autoDispose((ref) => Image1Provider());

class  Image1Provider extends ChangeNotifier{

  XFile? image;

  void get selectImage async{
    final ImagePicker _picker = ImagePicker();
    image = await _picker.pickImage(source: ImageSource.gallery);
    notifyListeners();
  }

}