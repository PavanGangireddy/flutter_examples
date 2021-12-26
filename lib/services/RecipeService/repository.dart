import 'models.dart';

abstract class RecipeService {
  Future<APIRecipeQuery> getRecipes(String query, int from, int to);
}
