import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/core/models/purchase_model.dart';

part 'purchase_state.freezed.dart';

@freezed
abstract class PurchaseState with _$PurchaseState {

  factory PurchaseState.initState() = _InitPurhcaseState;

  factory PurchaseState.content(List<Purchase> list) = _PurhcaseContent;

  factory PurchaseState.contentEmpty() = _PurhcaseEmpty;

  factory PurchaseState.error() = _PurhcaseError;

}
