// import 'package:dartz/dartz.dart';
// import 'package:flutter_app_pilot/core/error/failures.dart';

// import 'package:flutter_app_pilot/core/usecase/usecase.dart';
// import 'package:flutter_app_pilot/food_app/domain/entities/dish.dart';
// import 'package:flutter_app_pilot/food_app/domain/interactors/dish/get_popular_dishes_interactor.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// final dishListProvider =
//     FutureProvider.autoDispose<Either<Failure, List<Dish>>>(
//   (ref) async {
//     final _getPopularDishesInteractor = ref.read(getPopularDishesInteractor);
//     final dishesList = await _getPopularDishesInteractor(NoParams());
//     return dishesList.fold((e) {
//       return ServerFailure(e);
//     }, (r) => dishesList);
//   },
// );
