import 'package:chefkart/models/ingredients.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish_details.freezed.dart';
part 'dish_details.g.dart';

@freezed
class DishDetails with _$DishDetails {
  const factory DishDetails({
    @Default('') String name,
    @Default(0) int id,
    @Default('') String timeToPrepare,
    @Default(Ingredients()) Ingredients ingredients,
  }) = _DishDetails;

  factory DishDetails.fromJson(Map<String, dynamic> json) =>
      _$DishDetailsFromJson(json);
}
