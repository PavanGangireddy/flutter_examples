import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  factory CartItem(
      {required String name,
      required String image,
      required int quantity,
      required int itemId}) = _CartItem;
}
