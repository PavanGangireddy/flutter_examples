import 'package:flutter_app_pilot/notifiers/recipe_list_state.dart';
import 'package:flutter_app_pilot/services/RecipeService/repository.dart';
import 'package:flutter_app_pilot/services/service_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final recipeListNotifierProvider =
    StateNotifierProvider<RecipeListNotifier, RecipeListState>((ref) {
  return RecipeListNotifier(ref.watch(recipeServiceProvider));
});

//TODO: Change to recipeRepository after learning clean arch
class RecipeListNotifier extends StateNotifier<RecipeListState> {
  RecipeListNotifier(this._recipeService)
      : super(const RecipeListState.initial());

  final IRecipeService _recipeService;

  Future<void> getRecipeData(
    String query,
  ) async {
    try {
      final recipeJson = await _recipeService.getRecipes(query, 5, 10);
      final recipeList =
          recipeJson.hits.map(((recipe) => recipe.recipe)).toList();
      state = RecipeListState.data(recipeList);
    } catch (e) {
      print(e);
      state = const RecipeListState.error('Error!');
      // TODO: Handle Exceptions in a separate place
      // Ref: https://www.youtube.com/watch?v=vrPk6LB9bjo
    }
  }
}
