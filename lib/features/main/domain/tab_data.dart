import 'package:freezed_annotation/freezed_annotation.dart';
part 'tab_data.freezed.dart';
part 'tab_data.g.dart';


@freezed
class TabRow with _$TabRow {
const factory TabRow({
     String? imagePath,
     String? color,
      required  int num,
     required  String label
   }) = _TabRow;

factory TabRow.fromJson(Map<String, Object?> json) => _$TabRowFromJson(json);

}
