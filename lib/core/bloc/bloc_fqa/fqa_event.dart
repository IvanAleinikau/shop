abstract class FqaEvent {}

class LoadFqa extends FqaEvent {}

class CircleEvent extends FqaEvent {}

class CreateFqa extends FqaEvent {
  final String question;
  final String answer;

  CreateFqa({
    required this.question,
    required this.answer,
  });
}

class DeleteFqa extends FqaEvent {
  final int? index;

  DeleteFqa({
    this.index,
  });
}
