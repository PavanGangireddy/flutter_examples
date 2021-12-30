import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_pilot/domain/entities/cart_item.dart';
import 'package:flutter_app_pilot/notifiers/cart_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FoodAppCartRoute extends StatelessWidget {
  const FoodAppCartRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 50),
                  Title(),
                  CartItemsList()
                ])));
  }
}

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: const Text(
        "CartItems",
        style: TextStyle(color: Colors.blue, fontSize: 30),
      ),
    );
  }
}

class CartItemsList extends HookConsumerWidget {
  const CartItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartList = ref.watch(cartItemsNotifierProvider);
    return cartList.when(
      loading: () => Container(
        color: Colors.white,
        child: const Center(child: CircularProgressIndicator()),
      ),
      error: (err, stack) {
        return Center(
          child: Text('$err.toString()'),
        );
      },
      data: (data) => data.isEmpty
          ? const Center(child: Text("Add to Cart"))
          : Flexible(
              child: ListView(children: [
              for (var i = 0; i < data.length; i++) ...[
                if (i > 0) const Divider(height: 0),
                ProviderScope(
                  overrides: [
                    currentCartItem.overrideWithValue(data[i]),
                  ],
                  child: const RenderCartItem(),
                ),
              ],
            ])),
    );
  }
}

// 1. Declare a ScopedProvider
final currentCartItem = Provider<CartItem>((_) => throw UnimplementedError());

class RenderCartItem extends HookConsumerWidget {
  const RenderCartItem({Key? key}) : super(key: key);

  Widget _incrementButton(int index, ref) {
    final cartItemNotifier = ref.watch(cartItemsNotifierProvider.notifier);
    return FloatingActionButton(
      heroTag: "btn1-$index",
      child: Icon(Icons.add, color: Colors.black87),
      backgroundColor: Colors.white,
      onPressed: () {
        cartItemNotifier.incrementCartItemCount(index);
      },
    );
  }

  Widget _decrementButton(int index, ref) {
    final cartItemNotifier = ref.watch(cartItemsNotifierProvider.notifier);
    return FloatingActionButton(
        heroTag: "btn2-$index",
        onPressed: () {
          cartItemNotifier.incrementCartItemCount(index);
        },
        child: Icon(Icons.format_indent_decrease, color: Colors.black87),
        backgroundColor: Colors.white);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItem = ref.watch(currentCartItem);

    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6.0),
                    topRight: Radius.circular(6.0)),
                child: Image.asset(
                  'assets/food_app/dish-${cartItem.itemId}.png',
                )),
            const SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                cartItem.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                '450 Kcal',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 11,
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Row(children: [
              _incrementButton(cartItem.itemId, ref),
              Text(
                cartItem.quantity.toString(),
                style: TextStyle(fontSize: 18.0),
              ),
              _decrementButton(cartItem.itemId, ref)
            ]),
          ]),
    );
  }
}
