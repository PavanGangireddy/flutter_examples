import 'package:flutter_app_pilot/domain/entities/dish.dart';
import 'package:flutter_app_pilot/services/DishService/repository.dart';

class DishServiceImpl implements IDishService {
  @override
  Future<List<Dish>> getPopularDishesList() {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        return [
          Dish(
            1,
            'Sea Platter',
            'Maratine Star Restaurant',
            'assets/food_app/dish-1',
            20.0,
            4.0,
            2.3,
            18,
          ),
          Dish(
            2,
            'Chicken Wadges',
            'Rio cafe',
            'assets/food_app/dish-2',
            25.0,
            4.5,
            2.3,
            18,
          ),
        ];
        ;
      },
    );
  }
}
