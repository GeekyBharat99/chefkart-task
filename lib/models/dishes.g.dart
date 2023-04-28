// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dishes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dishes _$$_DishesFromJson(Map<String, dynamic> json) => _$_Dishes(
      dishes: (json['dishes'] as List<dynamic>?)
              ?.map((e) => Dish.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      popularDishes: (json['popularDishes'] as List<dynamic>?)
              ?.map((e) => Dish.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DishesToJson(_$_Dishes instance) => <String, dynamic>{
      'dishes': instance.dishes,
      'popularDishes': instance.popularDishes,
    };
