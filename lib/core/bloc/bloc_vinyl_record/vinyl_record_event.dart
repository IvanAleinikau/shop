abstract class VinylRecordEvent {}

class LoadVinylRecord extends VinylRecordEvent {}

class CreateVinylRecord extends VinylRecordEvent {
  final String name;
  final String author;
  final String year;
  final String description;
  final String cost;
  final String image;

  CreateVinylRecord({
    required this.name,
    required this.author,
    required this.year,
    required this.description,
    required this.cost,
    required this.image,
  });
}

class AddName extends VinylRecordEvent{
  final String name;

  AddName(this.name);
}
