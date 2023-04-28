import 'package:chefkart/models/dish.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dishes.freezed.dart';
part 'dishes.g.dart';

@freezed
class Dishes with _$Dishes {
  const factory Dishes({
    @Default([]) List<Dish> dishes,
    @Default([]) List<Dish> popularDishes,
  }) = _Dishes;

  factory Dishes.fromJson(Map<String, dynamic> json) => _$DishesFromJson(json);
}
