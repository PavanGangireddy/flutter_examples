import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_pilot/core/error/failures.dart';
import 'package:flutter_app_pilot/core/resources/data_state.dart';
import 'package:flutter_app_pilot/core/useless/network_exceptions.dart';
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
  Future<DataState<List<Dish>>> call(NoParams params) async {
    try {
      final result = await _dishesRepository.getPopularDishesList();
      return DataState.success(result);
    } catch (error) {
      // if(error.code.sss = "EMAIL"){
        // return DataState.failed(
        //   DioError(
        //     error: httpResponse.response.statusMessage,
        //     response: httpResponse.response,
        //     request: httpResponse.response.request,
        //     type: DioErrorType.RESPONSE,
        //   ),
        // );
      }

      // return DataState.error(error as DioError);
    }
  }
}
