import 'package:flutter_app_pilot/food_app/data/models/models.dart';

abstract class IDishDataSource {
  /// Calls the http endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<List<DishModel>> getPopularDishesList();
}
