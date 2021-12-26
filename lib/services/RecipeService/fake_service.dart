import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_app_pilot/services/RecipeService/repository.dart';
import './models.dart';

part 'fake_service.g.dart';

@JsonLiteral('recipes1.json')
final _recipes1 = _$_recipes1JsonLiteral;

class FakeRecipeServiceImpl implements RecipeService {
  @override
  Future<APIRecipeQuery> getRecipes(String query, int x, int y) {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        return APIRecipeQuery.fromJson(_recipes1);
      },
    );
  }
}
