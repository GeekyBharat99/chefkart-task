import 'package:chefkart/models/appliance.dart';
import 'package:chefkart/models/vegetable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredients.freezed.dart';
part 'ingredients.g.dart';

@freezed
class Ingredients with _$Ingredients {
  const factory Ingredients({
    @Default([]) List<Vegetable> vegetables,
    @Default([]) List<Vegetable> spices,
    @Default([]) List<Appliance> appliances,
  }) = _Ingredients;

  factory Ingredients.fromJson(Map<String, dynamic> json) =>
      _$IngredientsFromJson(json);
}
