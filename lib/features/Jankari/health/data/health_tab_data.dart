import 'package:palikaa/features/main/domain/tab_data.dart';

const health_tab_data = [
  {
    'imagePath': 'assets/widget_icons/aspatal.png',
    'label': 'अस्पताल   ',
    'color': '0xFF558A8C',
    'num': 0
  },
  {
    'imagePath': 'assets/widget_icons/hospitalchauki.png',
    'label': 'स्वास्थ्य चौकी    ',
    'color': '0xFF039CF3',
    'num': 1
  },
  {
    'imagePath': 'assets/widget_icons/private.png',
    'label': 'निजी अस्पताल    ',
    'color': '0xFFFF8D54',
    'num': 2
  },
];

final List<TabRow> health_tab = health_tab_data.map((e) => TabRow.fromJson(e)).toList();
