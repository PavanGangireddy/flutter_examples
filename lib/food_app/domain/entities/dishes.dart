import './dish_type.dart';
import './dish.dart';

class Dishes {
  static final List<DishType> types = [
    DishType('Pizzas', 'assets/food_app/pizza.png'),
    DishType('Salad', 'assets/food_app/salad.png'),
    DishType('Shake', 'assets/food_app/shake.png'),
  ];

  static final List<Dish> dishes = [
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
}
