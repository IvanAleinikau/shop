import 'package:cloud_firestore/cloud_firestore.dart';

abstract class ShoppingCarState{}

class ShoppingCartInitState extends ShoppingCarState{}

class ShoppingCartLoaded extends ShoppingCarState{
  final shoppingCartRef = FirebaseFirestore.instance.collection('purchase').snapshots();
}