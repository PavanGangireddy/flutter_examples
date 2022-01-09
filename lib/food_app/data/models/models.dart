import 'package:flutter_app_pilot/food_app/domain/entities/dish.dart';
import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class DishModel extends Dish {
  final int dishId;
  final String name;
  final String place;
  final String image;
  final double price;
  final double rating;
  final double distance;
  final int deliveryTime;

  DishModel(
    this.dishId,
    this.name,
    this.place,
    this.image,
    this.price,
    this.rating,
    this.distance,
    this.deliveryTime,
  ) : super(dishId, name, place, image, price, rating, distance, deliveryTime);

  factory DishModel.fromJson(Map<String, dynamic> json) =>
      _$DishModelFromJson(json);

  Map<String, dynamic> toJson() => _$DishModelToJson(this);
}
