// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appliance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Appliance _$ApplianceFromJson(Map<String, dynamic> json) {
  return _Appliance.fromJson(json);
}

/// @nodoc
mixin _$Appliance {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplianceCopyWith<Appliance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplianceCopyWith<$Res> {
  factory $ApplianceCopyWith(Appliance value, $Res Function(Appliance) then) =
      _$ApplianceCopyWithImpl<$Res, Appliance>;
  @useResult
  $Res call({String name, String image});
}

/// @nodoc
class _$ApplianceCopyWithImpl<$Res, $Val extends Appliance>
    implements $ApplianceCopyWith<$Res> {
  _$ApplianceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApplianceCopyWith<$Res> implements $ApplianceCopyWith<$Res> {
  factory _$$_ApplianceCopyWith(
          _$_Appliance value, $Res Function(_$_Appliance) then) =
      __$$_ApplianceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String image});
}

/// @nodoc
class __$$_ApplianceCopyWithImpl<$Res>
    extends _$ApplianceCopyWithImpl<$Res, _$_Appliance>
    implements _$$_ApplianceCopyWith<$Res> {
  __$$_ApplianceCopyWithImpl(
      _$_Appliance _value, $Res Function(_$_Appliance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$_Appliance(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Appliance implements _Appliance {
  const _$_Appliance({this.name = '', this.image = ''});

  factory _$_Appliance.fromJson(Map<String, dynamic> json) =>
      _$$_ApplianceFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String image;

  @override
  String toString() {
    return 'Appliance(name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Appliance &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplianceCopyWith<_$_Appliance> get copyWith =>
      __$$_ApplianceCopyWithImpl<_$_Appliance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApplianceToJson(
      this,
    );
  }
}

abstract class _Appliance implements Appliance {
  const factory _Appliance({final String name, final String image}) =
      _$_Appliance;

  factory _Appliance.fromJson(Map<String, dynamic> json) =
      _$_Appliance.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_ApplianceCopyWith<_$_Appliance> get copyWith =>
      throw _privateConstructorUsedError;
}
