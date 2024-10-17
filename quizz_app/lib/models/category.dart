import 'package:quizz_app/models/question.dart';

class Category {
  String name;
  String imageUrl;
  String description;
  List<Question> questions;
  Category(this.name, this.imageUrl, this.questions, this.description);
}
