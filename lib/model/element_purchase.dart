import 'package:shop/model/element_vinyl_record.dart';

class Purchase {
  String user;
  bool isActive;
  VinylRecord vinylRecord;

  Purchase(this.user , this.isActive,this.vinylRecord );
}
