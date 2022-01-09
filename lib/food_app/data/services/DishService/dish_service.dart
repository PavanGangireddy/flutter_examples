import 'package:dio/dio.dart';
import 'package:flutter_app_pilot/food_app/data/services/DishService/interface.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

import '../../endpoints.dart';
import '../../models/models.dart';

part 'dish_service.g.dart';

@retrofit.RestApi()
abstract class DishServiceImpl implements IDishDataSource {
  factory DishServiceImpl(Dio dio) = _DishServiceImpl;

  @override
  @retrofit.GET(Endpoints.recipeList)
  Future<List<DishModel>> getPopularDishesList();
}
