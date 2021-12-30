import 'package:flutter_app_pilot/domain/entities/cart_item.dart';
import 'package:flutter_app_pilot/services/CartService/repository.dart';

class CartServiceImpl implements ICartService {
  @override
  Future<dynamic> addDishToCart(int dishId) {
    return Future.delayed(const Duration(seconds: 4), () {
      return "success";
    });
  }

  @override
  Future<List<CartItem>> getCartItems() {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        return [
          CartItem(
              itemId: 1,
              image: 'assets/food_app/dish-1',
              name: 'Sea Platter',
              quantity: 0),
          CartItem(
            itemId: 2,
            image: 'assets/food_app/dish-2',
            quantity: 0,
            name: 'Chicken Wadges',
          ),
        ];
        ;
      },
    );
  }
}
