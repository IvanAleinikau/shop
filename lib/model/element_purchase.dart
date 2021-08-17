import 'package:shop/model/element_vinyl_record.dart';

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
