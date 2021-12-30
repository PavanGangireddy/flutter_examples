import 'package:flutter_app_pilot/domain/entities/dish.dart';
import 'package:flutter_app_pilot/domain/entities/dish_details.dart';
// import 'package:flutter_app_pilot/domain/entities/dish_type.dart';

abstract class IDishService {
  Future<List<Dish>> getPopularDishesList();
  // Future<List<DishType>> getPopularDishTypesList();
  // Future<DishDetails> getSpecificDishDetails();

}
