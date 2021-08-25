abstract class ShoppingCarEvent {}

class CreatePurchase extends ShoppingCarEvent {
  final String name;
  final String author;
  final String year;
  final String description;
  final String cost;
  final String image;

  CreatePurchase({
    required this.name,
    required this.author,
    required this.year,
    required this.description,
    required this.cost,
    required this.image,
  });
}

class LoadPurchase extends ShoppingCarEvent {}
