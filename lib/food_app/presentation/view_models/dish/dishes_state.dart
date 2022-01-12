import 'package:flutter_app_pilot/core/state/remote_data_state.dart';
import 'package:flutter_app_pilot/food_app/domain/entities/dish.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dishes_state.freezed.dart';

@freezed
class DishesState with _$DishesState {
  const factory DishesState({required RemoteDataState<List<Dish>> dishes}) =
      _DishesState;

  factory DishesState.initial() => DishesState(
        dishes: RemoteDataState.initial(),
      );
}
