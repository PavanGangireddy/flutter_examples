// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishModel _$DishModelFromJson(Map<String, dynamic> json) => DishModel(
      json['dishId'] as int,
      json['name'] as String,
      json['place'] as String,
      json['image'] as String,
      (json['price'] as num).toDouble(),
      (json['rating'] as num).toDouble(),
      (json['distance'] as num).toDouble(),
      json['deliveryTime'] as int,
    );

Map<String, dynamic> _$DishModelToJson(DishModel instance) => <String, dynamic>{
      'dishId': instance.dishId,
      'name': instance.name,
      'place': instance.place,
      'image': instance.image,
      'price': instance.price,
      'rating': instance.rating,
      'distance': instance.distance,
      'deliveryTime': instance.deliveryTime,
    };
