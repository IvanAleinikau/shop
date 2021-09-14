import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_cart_event.freezed.dart';

@freezed
abstract class ShoppingCartEvent with _$ShoppingCartEvent {
  factory ShoppingCartEvent.fetchShoppingCart() = FetchShoppingCartEvent;

  factory ShoppingCartEvent.empty() = ShoppingCartEmpty;

  factory ShoppingCartEvent.increment(int count, int index) = CountIncrement;

  factory ShoppingCartEvent.decrement(int count, int index) = CountDecrement;

  factory ShoppingCartEvent.delete(int index) = Delete;

  factory ShoppingCartEvent.createShoppingCart(
    String name,
    String author,
    String year,
    String description,
    String cost,
    String image,
  ) = CreateShoppingCart;
}
