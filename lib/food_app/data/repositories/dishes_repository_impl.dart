import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_pilot/core/error/failures.dart';
import 'package:flutter_app_pilot/food_app/data/services/DishService/interface.dart';
import 'package:flutter_app_pilot/food_app/domain/entities/dish.dart';
import 'package:flutter_app_pilot/food_app/domain/repositories/dishes_repository.dart';

class DishesRepositoryImpl implements IDishesRepository {
  final IDishDataSource _dishService;
  // final NetworkInfo networkInfo; TODO: Implement this for server exception

  DishesRepositoryImpl(
    this._dishService,
  );

  @override
  Future<Either<Failure, List<Dish>>> getPopularDishesList() async {
    try {
      final result = await _dishService.getPopularDishesList();
      return Right(result);
    } catch (error) {
      return Left(UnexpectedFailure(error as DioError));
    }
  }
}


// final recipeServiceProvider = Provider<IRecipeService>((ref) {
//   final dioClient = CustomDioClient().create(
//     baseUrl: BaseUrls.gorest_baseUrl,
//   );
//   // Uncomment here for RecipeServiceImpl
//   // return RecipeServiceImpl(dioClient);
//   return FakeRecipeServiceImpl();
// });