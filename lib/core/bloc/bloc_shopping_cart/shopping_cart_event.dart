import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_cart_event.freezed.dart';

@freezed
abstract class ShoppingCartEvent with _$ShoppingCartEvent {

  factory ShoppingCartEvent.fetchShoppingCart() = FetchShoppingCartEvent;

  factory ShoppingCartEvent.empty() = ShoppingCartEmpty;

  factory ShoppingCartEvent.createShoppingCart(String name, String author,String year, String description, String cost, String image) = CreateShoppingCart;
}

