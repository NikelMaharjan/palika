import '../../../../export_pages.dart';


class BottomIndexProvider extends StateNotifier<int> {
  BottomIndexProvider(super.state);

  void onTaps(int index) {
    state = index;
  }
}
