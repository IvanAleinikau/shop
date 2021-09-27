import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/core/models/purchase_model.dart';

part 'shopping_cart_state.freezed.dart';

@freezed
abstract class ShoppingCartState with _$ShoppingCartState{

  factory ShoppingCartState.initState() = _InitState;

  factory ShoppingCartState.loading() = _ShoppingCartLoading;

  factory ShoppingCartState.content(List<Purchase> list, int cost) = _ShoppingCartContent;

  factory ShoppingCartState.contentEmpty() = _ShoppingCartEmpty;

  factory ShoppingCartState.error() = _ShoppingCartError;
}
