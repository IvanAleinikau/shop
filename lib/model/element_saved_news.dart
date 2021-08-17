class SavedNews {
  final int? id;
  final String user;
  final String title;
  final String text;
  final String date;

  SavedNews({
    this.id,
    required this.user,
    required this.title,
    required this.text,
    required this.date,
  });

  factory SavedNews.fromMap(Map<String, dynamic> json) => SavedNews(
        id: json['id'],
        user: json['user'],
        title: json['title'],
        text: json['text'],
        date: json['date'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'user': user,
        'title': title,
        'text': text,
        'date': date,
      };
}
