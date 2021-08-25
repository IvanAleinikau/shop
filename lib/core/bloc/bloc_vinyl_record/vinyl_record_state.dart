import 'package:cloud_firestore/cloud_firestore.dart';

abstract class VinylRecordState{}

class VinylRecordInitState extends VinylRecordState{}

class VinylRecordLoaded extends VinylRecordState{
  final vinylRecordRef = FirebaseFirestore.instance.collection('vinyl_record').snapshots();
}

class LoadListName extends VinylRecordState{
  final List<String> names;

  LoadListName(this.names);
}