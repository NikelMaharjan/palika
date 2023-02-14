import 'package:palikaa/export_pages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'item_model.freezed.dart';

@freezed
class ItemModel with _$ItemModel{
  const factory ItemModel({
   required String label,
    required String iconPath,
  void Function(BuildContext)? onTap,
    required Color borderColor,
    required Color bgColor,
   TextStyle? styles,
   Color? iconColor,
   Color? splashColor,
    WidgetRef? ref,
   Color? labelColor
}) = _ItemModel;


}