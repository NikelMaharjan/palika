import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_model.freezed.dart';
part 'data_model.g.dart';


@freezed
class Data with _$Data{
  const factory Data({
    required String label,
    String? detail,
    String? address,
    String? phone,
    String? imagePath
}) = _Data;

  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);

}