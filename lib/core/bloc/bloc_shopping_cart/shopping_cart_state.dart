import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_cart_state.freezed.dart';

@freezed
abstract class ShoppingCartState with _$ShoppingCartState{

  factory ShoppingCartState.initState() = _InitState;

  factory ShoppingCartState.loading() = _ShoppingCartLoading;

  factory ShoppingCartState.content(Stream<QuerySnapshot<Map<String, dynamic>>> name , user) = _ShoppingCartContent;

  factory ShoppingCartState.contentEmpty() = _ShoppingCartEmpty;

  factory ShoppingCartState.error() = _ShoppingCartError;
}
