import 'package:shop/core/models/vinyl_record_model.dart';

class Purchase {
  final String user;
  final bool isActive;
  final VinylRecord vinylRecord;

  Purchase(
    this.user,
    this.isActive,
    this.vinylRecord,
  );
}
