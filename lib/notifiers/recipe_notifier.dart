import 'package:flutter_app_pilot/services/RecipeService/models.dart';
import 'package:flutter_app_pilot/services/service_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final recipeListNotifierProvider =
    StateNotifierProvider<RecipeListNotifier, AsyncValue<List<APIRecipe>>>(
        (ref) {
  return RecipeListNotifier(ref.read);
});

class RecipeListNotifier extends StateNotifier<AsyncValue<List<APIRecipe>>> {
  final Reader _read;
  RecipeListNotifier(this._read) : super(const AsyncValue.loading()) {
    getRecipeData('');
  }
  Future<void> getRecipeData(
    String query,
  ) async {
    try {
      final recipeJson =
          await _read(goRestServiceProvider).getRecipes(query, 5, 10);
      final recipeList =
          recipeJson.hits.map(((recipe) => recipe.recipe)).toList();
      state = AsyncValue.data(recipeList);
    } catch (e) {
      print(e);
      state = AsyncValue.error(e);
    }
  }
}
