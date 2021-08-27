import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_event.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_state.dart';
import 'package:shop/core/models/vinyl_record_model.dart';
import 'package:shop/data/repositories/vinyl_record_repository.dart';

class VinylRecordBloc extends Bloc<VinylRecordEvent, VinylRecordState> {
  List<String> names = [];

  VinylRecordBloc() : super(VinylRecordInitState());

  @override
  Stream<VinylRecordState> mapEventToState(VinylRecordEvent event) async* {
    if (event is LoadVinylRecord) {
      yield VinylRecordLoaded();
    } else if (event is CreateVinylRecord) {
      VinylRecordRepository().makeVinylRecord(VinylRecord(
        name: event.name,
        author: event.author,
        year: event.year,
        description: event.description,
        cost: event.cost,
        image: event.image,
      ));
      yield VinylRecordLoaded();
    } else if (event is AddName) {
      names.add(event.name);
    }
  }
}
