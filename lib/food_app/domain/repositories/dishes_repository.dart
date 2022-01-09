import 'package:dartz/dartz.dart';
import 'package:flutter_app_pilot/core/error/failures.dart';
import 'package:flutter_app_pilot/food_app/domain/entities/dish.dart';

abstract class IDishesRepository {
  Future<Either<Failure, List<Dish>>> getPopularDishesList();
}
