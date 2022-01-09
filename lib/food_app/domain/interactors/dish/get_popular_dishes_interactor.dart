import 'package:dartz/dartz.dart';
import 'package:flutter_app_pilot/core/error/failures.dart';
import 'package:flutter_app_pilot/food_app/data/repositories/dishes_repository_impl.dart';
import 'package:flutter_app_pilot/food_app/data/services/DishService/fake_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../entities/dish.dart';
import '../../repositories/dishes_repository.dart';

final getPopularDishesInteractor = Provider<GetPopularDishesInteractor>((ref) {
  return GetPopularDishesInteractor(
      DishesRepositoryImpl(FakeDishServiceImpl()));
});

class GetPopularDishesInteractor implements UseCase<List<Dish>, NoParams> {
  final IDishesRepository _dishesRepository;

  GetPopularDishesInteractor(this._dishesRepository);

  @override
  Future<Either<Failure, List<Dish>>> call(NoParams params) {
    return _dishesRepository.getPopularDishesList();
  }
}
