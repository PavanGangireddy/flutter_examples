import 'package:flutter_app_pilot/domain/entities/cart_item.dart';
import 'package:flutter_app_pilot/notifiers/request_state.dart';
import 'package:flutter_app_pilot/services/CartService/repository.dart';
import 'package:flutter_app_pilot/services/service_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final addToCartNotifierProvider =
    StateNotifierProvider<AddToCartRequestNotifier, RequestState>((ref) {
  return AddToCartRequestNotifier(ref.watch(cartServiceProvider));
});

class AddToCartRequestNotifier extends RequestStateNotifier {
  final ICartService _cartService;

  AddToCartRequestNotifier(this._cartService);

  Future<void> addDishToCart(int dishId) =>
      makeRequest(() => _cartService.addDishToCart(dishId));
}

final cartItemsNotifierProvider =
    StateNotifierProvider<CartItemsNotifier, AsyncValue<List<CartItem>>>(
        (ref) => CartItemsNotifier(ref.watch(cartServiceProvider)));

class CartItemsNotifier extends StateNotifier<AsyncValue<List<CartItem>>> {
  CartItemsNotifier(this._cartService) : super(const AsyncValue.loading()) {
    getCartItems();
  }

  final ICartService _cartService;

  void incrementCartItemCount(int itemId) {
    List<CartItem> newList;
    state.whenData((value) {
      newList = [
        for (final cartItem in value)
          if (cartItem.itemId == itemId)
            cartItem.copyWith(quantity: cartItem.quantity + 1)
          else
            cartItem
      ];
      state = AsyncValue.data(newList);
    });
  }

  void removeCartItem(int itemId) {
    state.whenData((value) {
      state = AsyncValue.data(
          value.where((cartItem) => cartItem.itemId != itemId).toList());
    });
  }

  Future<void> getCartItems() async {
    try {
      state = const AsyncValue.loading();
      final cartItems = await _cartService.getCartItems();
      state = AsyncValue.data(cartItems);
    } catch (e) {
      state = const AsyncValue.error('Cart get items failed!');
    }
  }
}
