import 'package:cloud_firestore/cloud_firestore.dart';

abstract class NewsState{}

class NewsInitState extends NewsState{}

class NewsLoaded extends NewsState{
  final newsRef = FirebaseFirestore.instance.collection('news').snapshots();
}

class EmptyNews extends NewsState{}