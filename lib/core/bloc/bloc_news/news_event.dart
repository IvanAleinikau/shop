abstract class NewsEvent{}

class LoadNews extends NewsEvent{}

class CreateNews extends NewsEvent{
  final String title;
  final String text;
  final String url;

  CreateNews({required this.title,required this.text,required this.url});
}