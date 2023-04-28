// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ingredients _$IngredientsFromJson(Map<String, dynamic> json) {
  return _Ingredients.fromJson(json);
}

/// @nodoc
mixin _$Ingredients {
  List<Vegetable> get vegetables => throw _privateConstructorUsedError;
  List<Vegetable> get spices => throw _privateConstructorUsedError;
  List<Appliance> get appliances => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientsCopyWith<Ingredients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientsCopyWith<$Res> {
  factory $IngredientsCopyWith(
          Ingredients value, $Res Function(Ingredients) then) =
      _$IngredientsCopyWithImpl<$Res, Ingredients>;
  @useResult
  $Res call(
      {List<Vegetable> vegetables,
      List<Vegetable> spices,
      List<Appliance> appliances});
}

/// @nodoc
class _$IngredientsCopyWithImpl<$Res, $Val extends Ingredients>
    implements $IngredientsCopyWith<$Res> {
  _$IngredientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vegetables = null,
    Object? spices = null,
    Object? appliances = null,
  }) {
    return _then(_value.copyWith(
      vegetables: null == vegetables
          ? _value.vegetables
          : vegetables // ignore: cast_nullable_to_non_nullable
              as List<Vegetable>,
      spices: null == spices
          ? _value.spices
          : spices // ignore: cast_nullable_to_non_nullable
              as List<Vegetable>,
      appliances: null == appliances
          ? _value.appliances
          : appliances // ignore: cast_nullable_to_non_nullable
              as List<Appliance>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IngredientsCopyWith<$Res>
    implements $IngredientsCopyWith<$Res> {
  factory _$$_IngredientsCopyWith(
          _$_Ingredients value, $Res Function(_$_Ingredients) then) =
      __$$_IngredientsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Vegetable> vegetables,
      List<Vegetable> spices,
      List<Appliance> appliances});
}

/// @nodoc
class __$$_IngredientsCopyWithImpl<$Res>
    extends _$IngredientsCopyWithImpl<$Res, _$_Ingredients>
    implements _$$_IngredientsCopyWith<$Res> {
  __$$_IngredientsCopyWithImpl(
      _$_Ingredients _value, $Res Function(_$_Ingredients) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vegetables = null,
    Object? spices = null,
    Object? appliances = null,
  }) {
    return _then(_$_Ingredients(
      vegetables: null == vegetables
          ? _value._vegetables
          : vegetables // ignore: cast_nullable_to_non_nullable
              as List<Vegetable>,
      spices: null == spices
          ? _value._spices
          : spices // ignore: cast_nullable_to_non_nullable
              as List<Vegetable>,
      appliances: null == appliances
          ? _value._appliances
          : appliances // ignore: cast_nullable_to_non_nullable
              as List<Appliance>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ingredients implements _Ingredients {
  const _$_Ingredients(
      {final List<Vegetable> vegetables = const [],
      final List<Vegetable> spices = const [],
      final List<Appliance> appliances = const []})
      : _vegetables = vegetables,
        _spices = spices,
        _appliances = appliances;

  factory _$_Ingredients.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientsFromJson(json);

  final List<Vegetable> _vegetables;
  @override
  @JsonKey()
  List<Vegetable> get vegetables {
    if (_vegetables is EqualUnmodifiableListView) return _vegetables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vegetables);
  }

  final List<Vegetable> _spices;
  @override
  @JsonKey()
  List<Vegetable> get spices {
    if (_spices is EqualUnmodifiableListView) return _spices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spices);
  }

  final List<Appliance> _appliances;
  @override
  @JsonKey()
  List<Appliance> get appliances {
    if (_appliances is EqualUnmodifiableListView) return _appliances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appliances);
  }

  @override
  String toString() {
    return 'Ingredients(vegetables: $vegetables, spices: $spices, appliances: $appliances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ingredients &&
            const DeepCollectionEquality()
                .equals(other._vegetables, _vegetables) &&
            const DeepCollectionEquality().equals(other._spices, _spices) &&
            const DeepCollectionEquality()
                .equals(other._appliances, _appliances));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_vegetables),
      const DeepCollectionEquality().hash(_spices),
      const DeepCollectionEquality().hash(_appliances));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientsCopyWith<_$_Ingredients> get copyWith =>
      __$$_IngredientsCopyWithImpl<_$_Ingredients>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientsToJson(
      this,
    );
  }
}

abstract class _Ingredients implements Ingredients {
  const factory _Ingredients(
      {final List<Vegetable> vegetables,
      final List<Vegetable> spices,
      final List<Appliance> appliances}) = _$_Ingredients;

  factory _Ingredients.fromJson(Map<String, dynamic> json) =
      _$_Ingredients.fromJson;

  @override
  List<Vegetable> get vegetables;
  @override
  List<Vegetable> get spices;
  @override
  List<Appliance> get appliances;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientsCopyWith<_$_Ingredients> get copyWith =>
      throw _privateConstructorUsedError;
}
