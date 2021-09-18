import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_event.dart';
import 'package:shop/core/bloc/bloc_vinyl_record/vinyl_record_state.dart';
import 'package:shop/core/models/vinyl_record_model.dart';
import 'package:shop/data/service/vinyl_record_service.dart';

class VinylRecordBloc extends Bloc<VinylRecordEvent, VinylRecordState> {
  final service = GetIt.instance<VinylRecordService>();
  late List<VinylRecord> allVinylRecord;
  final List<String> names = [];

  VinylRecordBloc() : super(VinylRecordState.initState());

  @override
  Stream<VinylRecordState> mapEventToState(VinylRecordEvent event) async* {
    yield* event.map(
      fetchNews: _fetchNews,
      empty: _empty,
      createVinylRecord: _createVinylRecord,
      nameToList: _nameToList,
    );
  }

  Stream<VinylRecordState> _fetchNews(FetchVinylRecord event) async* {
    try {
      allVinylRecord=[];
      allVinylRecord = await service.fetchVinylRecord();
      yield VinylRecordState.content(allVinylRecord);
    } catch (_) {
      yield VinylRecordState.error();
    }
  }

  Stream<VinylRecordState> _createVinylRecord(CreateVinylRecord event) async* {
    service.makeVinylRecord(VinylRecord(
      name: event.name,
      author: event.author,
      year: event.year,
      description: event.description,
      cost: event.cost.toString(),
      image: event.image,
    ));
  }

  Stream<VinylRecordState> _empty(VinylRecordEmpty event) async* {
    yield VinylRecordState.contentEmpty();
  }

  Stream<VinylRecordState> _nameToList(NameToList event) async* {
    names.add(event.name);
  }
}
