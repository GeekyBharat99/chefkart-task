// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dishes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dishes _$DishesFromJson(Map<String, dynamic> json) {
  return _Dishes.fromJson(json);
}

/// @nodoc
mixin _$Dishes {
  List<Dish> get dishes => throw _privateConstructorUsedError;
  List<Dish> get popularDishes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DishesCopyWith<Dishes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishesCopyWith<$Res> {
  factory $DishesCopyWith(Dishes value, $Res Function(Dishes) then) =
      _$DishesCopyWithImpl<$Res, Dishes>;
  @useResult
  $Res call({List<Dish> dishes, List<Dish> popularDishes});
}

/// @nodoc
class _$DishesCopyWithImpl<$Res, $Val extends Dishes>
    implements $DishesCopyWith<$Res> {
  _$DishesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
    Object? popularDishes = null,
  }) {
    return _then(_value.copyWith(
      dishes: null == dishes
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
      popularDishes: null == popularDishes
          ? _value.popularDishes
          : popularDishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DishesCopyWith<$Res> implements $DishesCopyWith<$Res> {
  factory _$$_DishesCopyWith(_$_Dishes value, $Res Function(_$_Dishes) then) =
      __$$_DishesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Dish> dishes, List<Dish> popularDishes});
}

/// @nodoc
class __$$_DishesCopyWithImpl<$Res>
    extends _$DishesCopyWithImpl<$Res, _$_Dishes>
    implements _$$_DishesCopyWith<$Res> {
  __$$_DishesCopyWithImpl(_$_Dishes _value, $Res Function(_$_Dishes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
    Object? popularDishes = null,
  }) {
    return _then(_$_Dishes(
      dishes: null == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
      popularDishes: null == popularDishes
          ? _value._popularDishes
          : popularDishes // ignore: cast_nullable_to_non_nullable
              as List<Dish>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dishes implements _Dishes {
  const _$_Dishes(
      {final List<Dish> dishes = const [],
      final List<Dish> popularDishes = const []})
      : _dishes = dishes,
        _popularDishes = popularDishes;

  factory _$_Dishes.fromJson(Map<String, dynamic> json) =>
      _$$_DishesFromJson(json);

  final List<Dish> _dishes;
  @override
  @JsonKey()
  List<Dish> get dishes {
    if (_dishes is EqualUnmodifiableListView) return _dishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishes);
  }

  final List<Dish> _popularDishes;
  @override
  @JsonKey()
  List<Dish> get popularDishes {
    if (_popularDishes is EqualUnmodifiableListView) return _popularDishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularDishes);
  }

  @override
  String toString() {
    return 'Dishes(dishes: $dishes, popularDishes: $popularDishes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dishes &&
            const DeepCollectionEquality().equals(other._dishes, _dishes) &&
            const DeepCollectionEquality()
                .equals(other._popularDishes, _popularDishes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dishes),
      const DeepCollectionEquality().hash(_popularDishes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishesCopyWith<_$_Dishes> get copyWith =>
      __$$_DishesCopyWithImpl<_$_Dishes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DishesToJson(
      this,
    );
  }
}

abstract class _Dishes implements Dishes {
  const factory _Dishes(
      {final List<Dish> dishes, final List<Dish> popularDishes}) = _$_Dishes;

  factory _Dishes.fromJson(Map<String, dynamic> json) = _$_Dishes.fromJson;

  @override
  List<Dish> get dishes;
  @override
  List<Dish> get popularDishes;
  @override
  @JsonKey(ignore: true)
  _$$_DishesCopyWith<_$_Dishes> get copyWith =>
      throw _privateConstructorUsedError;
}
