import 'package:palikaa/features/main/domain/tab_data.dart';

const tourist_tab_data = [
  {'label': 'वडा न 1   ', 'num': 0},
  {'label': 'वडा न 2    ', 'num': 1},
  {'label': 'वडा न 3    ', 'num': 2},
  {'label': 'वडा न 4     ', 'num': 3},
];

final List<TabRow> tourist_tab = tourist_tab_data.map((e) => TabRow.fromJson(e)).toList();
