import 'models.dart';

abstract class IRecipeService {
  Future<APIRecipeQuery> getRecipes(String query, int from, int to);
}
