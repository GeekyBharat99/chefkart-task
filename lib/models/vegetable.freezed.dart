// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vegetable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Vegetable _$VegetableFromJson(Map<String, dynamic> json) {
  return _Vegetable.fromJson(json);
}

/// @nodoc
mixin _$Vegetable {
  String get name => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VegetableCopyWith<Vegetable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VegetableCopyWith<$Res> {
  factory $VegetableCopyWith(Vegetable value, $Res Function(Vegetable) then) =
      _$VegetableCopyWithImpl<$Res, Vegetable>;
  @useResult
  $Res call({String name, String quantity});
}

/// @nodoc
class _$VegetableCopyWithImpl<$Res, $Val extends Vegetable>
    implements $VegetableCopyWith<$Res> {
  _$VegetableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VegetableCopyWith<$Res> implements $VegetableCopyWith<$Res> {
  factory _$$_VegetableCopyWith(
          _$_Vegetable value, $Res Function(_$_Vegetable) then) =
      __$$_VegetableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String quantity});
}

/// @nodoc
class __$$_VegetableCopyWithImpl<$Res>
    extends _$VegetableCopyWithImpl<$Res, _$_Vegetable>
    implements _$$_VegetableCopyWith<$Res> {
  __$$_VegetableCopyWithImpl(
      _$_Vegetable _value, $Res Function(_$_Vegetable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
  }) {
    return _then(_$_Vegetable(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Vegetable implements _Vegetable {
  const _$_Vegetable({this.name = '', this.quantity = ''});

  factory _$_Vegetable.fromJson(Map<String, dynamic> json) =>
      _$$_VegetableFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String quantity;

  @override
  String toString() {
    return 'Vegetable(name: $name, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Vegetable &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VegetableCopyWith<_$_Vegetable> get copyWith =>
      __$$_VegetableCopyWithImpl<_$_Vegetable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VegetableToJson(
      this,
    );
  }
}

abstract class _Vegetable implements Vegetable {
  const factory _Vegetable({final String name, final String quantity}) =
      _$_Vegetable;

  factory _Vegetable.fromJson(Map<String, dynamic> json) =
      _$_Vegetable.fromJson;

  @override
  String get name;
  @override
  String get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_VegetableCopyWith<_$_Vegetable> get copyWith =>
      throw _privateConstructorUsedError;
}
