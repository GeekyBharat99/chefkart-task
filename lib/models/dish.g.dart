// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dish _$$_DishFromJson(Map<String, dynamic> json) => _$_Dish(
      name: json['name'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      description: json['description'] as String? ?? '',
      equipments: (json['equipments'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      image: json['image'] as String? ?? '',
      id: json['id'] as int? ?? 0,
    );

Map<String, dynamic> _$$_DishToJson(_$_Dish instance) => <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'description': instance.description,
      'equipments': instance.equipments,
      'image': instance.image,
      'id': instance.id,
    };
