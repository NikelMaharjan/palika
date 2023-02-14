import '../domain/tab_data.dart';

const homeTabData = [
  {
    'imagePath': 'assets/icons/1.png',
    'label': 'Janata   ',
    'color': '0xFF558A8C',
    'num': 0
  },
  {
    'imagePath': 'assets/icons/2.png',
    'label': 'Jankari    ',
    'color': '0xFF039CF3',
    'num': 1
  },
  {
    'imagePath': 'assets/icons/3.png',
    'label': 'Pratinidhi    ',
    'color': '0xFFFF8D54',
    'num': 2
  },
  {
    'imagePath': 'assets/icons/4.png',
    'label': 'Karmachari    ',
    'color': '0xFFBC6996',
    'num': 3
  },
];

final  List<TabRow> homeTab = homeTabData.map((e) => TabRow.fromJson(e)).toList();
