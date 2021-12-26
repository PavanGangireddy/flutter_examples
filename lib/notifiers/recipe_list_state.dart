import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_app_pilot/services/RecipeService/models.dart';

part 'recipe_list_state.freezed.dart';

///Extension Method for easy comparison
extension RecipeListGetters on RecipeListState {
  bool get isLoading => this is _RecipeListStateLoading;
}

@freezed
class RecipeListState with _$RecipeListState {
  ///Initial
  const factory RecipeListState.initial() = _RecipeListStateInitial;

  ///Loading
  const factory RecipeListState.loading() = _RecipeListStateLoading;

  ///Data
  const factory RecipeListState.data(List<APIRecipe> recipes) =
      _RecipeListStateData;

  ///Error
  const factory RecipeListState.error(String? error) = _RecipeListStateError;
}
