abstract class SavedNewsEvent {}

class LoadSavedNews extends SavedNewsEvent {}

class DeleteSavedNews extends SavedNewsEvent {
  final int? index;

  DeleteSavedNews({
    required this.index,
  });
}

class CircleEvent extends SavedNewsEvent {}

class CreateSavedNews extends SavedNewsEvent{
  final String title;
  final String text;
  final String date;

  CreateSavedNews({required this.title,required this.text,required this.date});
}
