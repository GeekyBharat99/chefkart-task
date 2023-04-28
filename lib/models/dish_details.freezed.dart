// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dish_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DishDetails _$DishDetailsFromJson(Map<String, dynamic> json) {
  return _DishDetails.fromJson(json);
}

/// @nodoc
mixin _$DishDetails {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get timeToPrepare => throw _privateConstructorUsedError;
  Ingredients get ingredients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DishDetailsCopyWith<DishDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishDetailsCopyWith<$Res> {
  factory $DishDetailsCopyWith(
          DishDetails value, $Res Function(DishDetails) then) =
      _$DishDetailsCopyWithImpl<$Res, DishDetails>;
  @useResult
  $Res call(
      {String name, int id, String timeToPrepare, Ingredients ingredients});

  $IngredientsCopyWith<$Res> get ingredients;
}

/// @nodoc
class _$DishDetailsCopyWithImpl<$Res, $Val extends DishDetails>
    implements $DishDetailsCopyWith<$Res> {
  _$DishDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? timeToPrepare = null,
    Object? ingredients = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timeToPrepare: null == timeToPrepare
          ? _value.timeToPrepare
          : timeToPrepare // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as Ingredients,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IngredientsCopyWith<$Res> get ingredients {
    return $IngredientsCopyWith<$Res>(_value.ingredients, (value) {
      return _then(_value.copyWith(ingredients: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DishDetailsCopyWith<$Res>
    implements $DishDetailsCopyWith<$Res> {
  factory _$$_DishDetailsCopyWith(
          _$_DishDetails value, $Res Function(_$_DishDetails) then) =
      __$$_DishDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, int id, String timeToPrepare, Ingredients ingredients});

  @override
  $IngredientsCopyWith<$Res> get ingredients;
}

/// @nodoc
class __$$_DishDetailsCopyWithImpl<$Res>
    extends _$DishDetailsCopyWithImpl<$Res, _$_DishDetails>
    implements _$$_DishDetailsCopyWith<$Res> {
  __$$_DishDetailsCopyWithImpl(
      _$_DishDetails _value, $Res Function(_$_DishDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? timeToPrepare = null,
    Object? ingredients = null,
  }) {
    return _then(_$_DishDetails(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timeToPrepare: null == timeToPrepare
          ? _value.timeToPrepare
          : timeToPrepare // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as Ingredients,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DishDetails implements _DishDetails {
  const _$_DishDetails(
      {this.name = '',
      this.id = 0,
      this.timeToPrepare = '',
      this.ingredients = const Ingredients()});

  factory _$_DishDetails.fromJson(Map<String, dynamic> json) =>
      _$$_DishDetailsFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String timeToPrepare;
  @override
  @JsonKey()
  final Ingredients ingredients;

  @override
  String toString() {
    return 'DishDetails(name: $name, id: $id, timeToPrepare: $timeToPrepare, ingredients: $ingredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DishDetails &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timeToPrepare, timeToPrepare) ||
                other.timeToPrepare == timeToPrepare) &&
            (identical(other.ingredients, ingredients) ||
                other.ingredients == ingredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, id, timeToPrepare, ingredients);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishDetailsCopyWith<_$_DishDetails> get copyWith =>
      __$$_DishDetailsCopyWithImpl<_$_DishDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DishDetailsToJson(
      this,
    );
  }
}

abstract class _DishDetails implements DishDetails {
  const factory _DishDetails(
      {final String name,
      final int id,
      final String timeToPrepare,
      final Ingredients ingredients}) = _$_DishDetails;

  factory _DishDetails.fromJson(Map<String, dynamic> json) =
      _$_DishDetails.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  String get timeToPrepare;
  @override
  Ingredients get ingredients;
  @override
  @JsonKey(ignore: true)
  _$$_DishDetailsCopyWith<_$_DishDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
