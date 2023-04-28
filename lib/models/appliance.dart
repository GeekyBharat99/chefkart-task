import 'package:freezed_annotation/freezed_annotation.dart';

part 'appliance.freezed.dart';
part 'appliance.g.dart';

@freezed
class Appliance with _$Appliance {
  const factory Appliance({
    @Default('') String name,
    @Default('') String image,
  }) = _Appliance;

  factory Appliance.fromJson(Map<String, dynamic> json) =>
      _$ApplianceFromJson(json);
}
