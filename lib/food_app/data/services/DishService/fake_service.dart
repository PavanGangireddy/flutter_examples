import 'package:flutter_app_pilot/food_app/data/models/models.dart';
import 'package:flutter_app_pilot/food_app/data/services/DishService/interface.dart';

class FakeDishServiceImpl implements IDishDataSource {
  @override
  Future<List<DishModel>> getPopularDishesList() {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        return [
          DishModel(
            1,
            'Sea Platter',
            'Maratine Star Restaurant',
            'assets/food_app/dish-1',
            20.0,
            4.0,
            2.3,
            18,
          ),
          DishModel(
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
