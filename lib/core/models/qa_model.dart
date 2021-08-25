class QuestionAnswer {
  final int? id;
  final String question;
  final String answer;

  QuestionAnswer({
    this.id,
    required this.question,
    required this.answer,
  });

  factory QuestionAnswer.fromMap(Map<String, dynamic> json) => QuestionAnswer(
        id: json['id'],
        question: json['question'],
        answer: json['answer'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'question': question,
        'answer': answer,
      };
}
