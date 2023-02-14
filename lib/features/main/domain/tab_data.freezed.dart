// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TabRow _$TabRowFromJson(Map<String, dynamic> json) {
  return _TabRow.fromJson(json);
}

/// @nodoc
mixin _$TabRow {
  String? get imagePath => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  int get num => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TabRowCopyWith<TabRow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabRowCopyWith<$Res> {
  factory $TabRowCopyWith(TabRow value, $Res Function(TabRow) then) =
      _$TabRowCopyWithImpl<$Res, TabRow>;
  @useResult
  $Res call({String? imagePath, String? color, int num, String label});
}

/// @nodoc
class _$TabRowCopyWithImpl<$Res, $Val extends TabRow>
    implements $TabRowCopyWith<$Res> {
  _$TabRowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? color = freezed,
    Object? num = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TabRowCopyWith<$Res> implements $TabRowCopyWith<$Res> {
  factory _$$_TabRowCopyWith(_$_TabRow value, $Res Function(_$_TabRow) then) =
      __$$_TabRowCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imagePath, String? color, int num, String label});
}

/// @nodoc
class __$$_TabRowCopyWithImpl<$Res>
    extends _$TabRowCopyWithImpl<$Res, _$_TabRow>
    implements _$$_TabRowCopyWith<$Res> {
  __$$_TabRowCopyWithImpl(_$_TabRow _value, $Res Function(_$_TabRow) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = freezed,
    Object? color = freezed,
    Object? num = null,
    Object? label = null,
  }) {
    return _then(_$_TabRow(
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TabRow implements _TabRow {
  const _$_TabRow(
      {this.imagePath, this.color, required this.num, required this.label});

  factory _$_TabRow.fromJson(Map<String, dynamic> json) =>
      _$$_TabRowFromJson(json);

  @override
  final String? imagePath;
  @override
  final String? color;
  @override
  final int num;
  @override
  final String label;

  @override
  String toString() {
    return 'TabRow(imagePath: $imagePath, color: $color, num: $num, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabRow &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imagePath, color, num, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabRowCopyWith<_$_TabRow> get copyWith =>
      __$$_TabRowCopyWithImpl<_$_TabRow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TabRowToJson(
      this,
    );
  }
}

abstract class _TabRow implements TabRow {
  const factory _TabRow(
      {final String? imagePath,
      final String? color,
      required final int num,
      required final String label}) = _$_TabRow;

  factory _TabRow.fromJson(Map<String, dynamic> json) = _$_TabRow.fromJson;

  @override
  String? get imagePath;
  @override
  String? get color;
  @override
  int get num;
  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_TabRowCopyWith<_$_TabRow> get copyWith =>
      throw _privateConstructorUsedError;
}
