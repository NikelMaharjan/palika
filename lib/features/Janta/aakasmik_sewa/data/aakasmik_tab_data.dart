import 'package:palikaa/features/main/domain/tab_data.dart';

const aakasmik_tab_data = [
  {
    'color': '0xFFF44336',
    'imagePath': 'assets/icons/Fire truck.png',
    'label': 'दमकल       ',
    'num': 0
  },
  {
    'color': '0XFF4CAF50.',
    'imagePath': 'assets/icons/blood.png',
    'label': 'रगत    ',
    'num': 1
  },
  {
    'color': '0XFF2196F3',
    'imagePath': 'assets/icons/ambulance.png',
    'label': 'एम्बुलेन्स    ',
    'num': 2
  },
];

final List<TabRow> aakasmik_tab =
aakasmik_tab_data.map((e) => TabRow.fromJson(e)).toList();
