import 'package:flutter_app_pilot/core/state/remote_data_state.dart';
import 'package:flutter_app_pilot/core/usecase/usecase.dart';
import 'package:flutter_app_pilot/food_app/domain/interactors/dish/get_popular_dishes_interactor.dart';
import 'package:flutter_app_pilot/food_app/presentation/view_models/dish/dishes_state.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final dishesViewModelProvider =
    StateNotifierProvider<DishesViewModel, DishesState>((ref) {
  return DishesViewModel(ref.watch(getPopularDishesInteractor));
});

class DishesViewModel extends StateNotifier<DishesState> {
  DishesViewModel(this._getPopularDishesInteractor)
      : super(DishesState.initial()) {
    getPopularDishes();
  }
  final GetPopularDishesInteractor _getPopularDishesInteractor;

  getPopularDishes() async {
    state = state.copyWith(dishes: const RemoteDataState.loading());
    final dishesList = await _getPopularDishesInteractor(NoParams());
    dishesList.when(
      success: () => {
        state = state.copyWith(dishes: const RemoteDataState.error('Error!'));
      }, failure: () => {
      state = state.copyWith(dishes: RemoteDataState.data(r))
      });
  }
}
