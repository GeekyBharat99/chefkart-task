// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ingredients _$$_IngredientsFromJson(Map<String, dynamic> json) =>
    _$_Ingredients(
      vegetables: (json['vegetables'] as List<dynamic>?)
              ?.map((e) => Vegetable.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      spices: (json['spices'] as List<dynamic>?)
              ?.map((e) => Vegetable.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      appliances: (json['appliances'] as List<dynamic>?)
              ?.map((e) => Appliance.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_IngredientsToJson(_$_Ingredients instance) =>
    <String, dynamic>{
      'vegetables': instance.vegetables,
      'spices': instance.spices,
      'appliances': instance.appliances,
    };
