import 'package:http/http.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const String apiKey = 'fc246d58';
const String apiId = '9b07b8f8237a51a2fc61fd13e529d5eb';
const String apiUrl = 'https://api.edamam.com/search';

abstract class BaseRecipeRepository {
  Future<dynamic> getRecipes(String query, int from, int to);
}

Future getData(String url) async {
  // 2
  print('Calling url: $url');
  // 3
  final response = await get(Uri.parse(url));
  // 4
  if (response.statusCode == 200) {
    // 5
    return response.body;
  } else {
    // 6
    print(response.statusCode);
  }
}

final recipeRepositoryProvider =
    Provider<BaseRecipeRepository>((ref) => RecipeRepository(ref.read));

class RecipeRepository implements BaseRecipeRepository {
  final Reader _read;

  RecipeRepository(this._read);

  @override
  Future<dynamic> getRecipes(String query, int from, int to) async {
    final recipeData = await getData('https://jsonkeeper.com/b/85RU');
    return recipeData;
  }
}
