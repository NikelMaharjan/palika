import 'package:palikaa/export_pages.dart';
import 'package:easy_localization/easy_localization.dart';

import 'hive_provider.dart';


final languageProvider = StateNotifierProvider<LanguageToggle, bool>((ref) => LanguageToggle(ref.watch(boxB), ref.watch(boxHive)));

class LanguageToggle extends StateNotifier<bool>{
  LanguageToggle(super.state, this.box);

  final Box<bool>  box;

  void changeNep(BuildContext context) {
    box.put('isEnglish', false);
    state = false;
    context.setLocale(Locale('en', 'NP'));

  }
  void changeEng(BuildContext context) {
    box.put('isEnglish', true);
    state = true;
    context.setLocale(Locale('en', 'US'));
  }



}