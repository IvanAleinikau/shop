import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_event.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_state.dart';
import 'package:shop/core/models/vinyl_record_model.dart';
import 'package:shop/data/repositories/vinyl_record_repository.dart';

class VinylRecordBloc extends Bloc<VinylRecordEvent, VinylRecordState> {
  VinylRecordRepository repository = VinylRecordRepository();
  List<String> names = [];

  VinylRecordBloc() : super(VinylRecordState.initState());

  @override
  Stream<VinylRecordState> mapEventToState(VinylRecordEvent event) async* {
    if (event is FetchVinylRecord) {
      try {
        yield VinylRecordState.content(FirebaseFirestore.instance.collection('vinyl_record').snapshots());
      } catch (_) {
        yield VinylRecordState.error();
      }
    }
    if (event is CreateVinylRecord) {
      repository.makeVinylRecord(VinylRecord(
        name: event.name,
        author: event.author,
        year: event.year,
        description: event.description,
        cost: event.cost,
        image: event.image,
      ));
    }
    if(event is VinylRecordEmpty){
      yield VinylRecordState.contentEmpty();
    }
    if (event is NameToList) {
      names.add(event.name);
    }
  }
}
