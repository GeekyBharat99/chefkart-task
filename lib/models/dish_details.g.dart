// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DishDetails _$$_DishDetailsFromJson(Map<String, dynamic> json) =>
    _$_DishDetails(
      name: json['name'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      timeToPrepare: json['timeToPrepare'] as String? ?? '',
      ingredients: json['ingredients'] == null
          ? const Ingredients()
          : Ingredients.fromJson(json['ingredients'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DishDetailsToJson(_$_DishDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'timeToPrepare': instance.timeToPrepare,
      'ingredients': instance.ingredients,
    };
