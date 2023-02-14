// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      label: json['label'] as String,
      detail: json['detail'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      imagePath: json['imagePath'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'label': instance.label,
      'detail': instance.detail,
      'address': instance.address,
      'phone': instance.phone,
      'imagePath': instance.imagePath,
    };
