import 'package:palikaa/export_pages.dart';
import 'package:palikaa/features/main/dashboard/application/home_appbar_label_notifier.dart';
import 'b_nav_index_notifier.dart';



final bIndexProvider = StateNotifierProvider<BottomIndexProvider, int>((ref) => BottomIndexProvider(0));

final labelProvider = StateNotifierProvider<LabelProvider, String>((ref) => LabelProvider('Digital Palika', ref.watch(bIndexProvider)));