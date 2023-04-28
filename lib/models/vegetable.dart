import 'package:freezed_annotation/freezed_annotation.dart';

part 'vegetable.freezed.dart';
part 'vegetable.g.dart';

@freezed
class Vegetable with _$Vegetable {
  const factory Vegetable({
    @Default('') String name,
    @Default('') String quantity,
  }) = _Vegetable;

  factory Vegetable.fromJson(Map<String, dynamic> json) =>
      _$VegetableFromJson(json);
}
