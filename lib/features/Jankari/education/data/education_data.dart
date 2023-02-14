import 'package:palikaa/features/main/domain/tab_data.dart';

const education_tab_data = [
  {
    'imagePath': 'assets/info_icons/karkhana_tab.png',
    'label': 'शिक्षा विषयहरू   ',
    'color': '0xFF558A8C',
    'num': 0
  },
  {
    'imagePath': 'assets/info_icons/sastha_tab.png',
    'label': 'संस्था ',
    'color': '0xFF039CF3',
    'num': 1
  },
  {
    'imagePath': 'assets/info_icons/Balbikash_tab.png',
    'label': 'बालविकास    ',
    'color': '0xFFFF8D54',
    'num': 2
  },
  {
    'imagePath': 'assets/info_icons/talim_center_tab.png',
    'label': 'तालिम केन्द्र     ',
    'color': '0xFFBC6996',
    'num': 3
  },
];

final List<TabRow> edu_tab = education_tab_data.map((e) => TabRow.fromJson(e)).toList();