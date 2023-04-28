import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.freezed.dart';
part 'dish.g.dart';

@freezed
class Dish with _$Dish {
  const factory Dish({
    @Default('') String name,
    @Default(0.0) double rating,
    @Default('') String description,
    @Default([]) List<String> equipments,
    @Default('') String image,
    @Default(0) int id,
  }) = _Dish;

  factory Dish.fromJson(Map<String, dynamic> json) => _$DishFromJson(json);
}
