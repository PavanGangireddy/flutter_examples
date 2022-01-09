import 'package:flutter_app_pilot/food_app/data/repositories/dishes_repository_impl.dart';
import 'package:flutter_app_pilot/food_app/data/services/DishService/fake_service.dart';
import 'package:flutter_app_pilot/food_app/domain/repositories/dishes_repository.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final dishesRepositoryProvider = Provider<IDishesRepository>((ref) {
  return DishesRepositoryImpl(FakeDishServiceImpl());
});

// final cartServiceProvider = Provider<ICartService>((ref) {
//   return CartServiceImpl();
// });
