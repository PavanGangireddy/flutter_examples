// import 'package:flutter_app_pilot/domain/entities/dish_type.dart';

abstract class ICartService {
  dynamic addDishToCart(int dishId);
  dynamic getCartItems();
}
