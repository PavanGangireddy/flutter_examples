import 'package:flutter_app_pilot/services/CartService/cart_service.dart';
import 'package:flutter_app_pilot/services/CartService/repository.dart';
import 'package:flutter_app_pilot/services/DishService/dish_service.dart';
import 'package:flutter_app_pilot/services/DishService/repository.dart';
import 'package:flutter_app_pilot/services/RecipeService/recipe_service.dart';
import 'package:flutter_app_pilot/services/RecipeService/fake_service.dart';
import 'RecipeService/repository.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_app_pilot/core/dio_client.dart';

import './base_urls.dart';

final recipeServiceProvider = Provider<IRecipeService>((ref) {
  final dioClient = CustomDioClient().create(
    baseUrl: BaseUrls.gorest_baseUrl,
  );
  // Uncomment here for RecipeServiceImpl
  // return RecipeServiceImpl(dioClient);
  return FakeRecipeServiceImpl();
});

final dishServiceProvider = Provider<IDishService>((ref) {
  return DishServiceImpl();
});

final cartServiceProvider = Provider<ICartService>((ref) {
  return CartServiceImpl();
});
