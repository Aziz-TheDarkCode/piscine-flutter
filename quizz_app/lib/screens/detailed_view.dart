import 'package:flutter/material.dart';
import 'package:quizz_app/_widgets/layout/custom_app_bar.dart';
import 'package:quizz_app/models/category.dart';
import 'package:quizz_app/models/question.dart'; // Make sure to import the Question model

class QuizPlayground extends StatefulWidget {
  const QuizPlayground({super.key});

  @override
  _QuizPlaygroundState createState() => _QuizPlaygroundState();
}

class _QuizPlaygroundState extends State<QuizPlayground> {
  late Category category;
  int currentQuestionIndex = 0;
  int score = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    category = ModalRoute.of(context)!.settings.arguments as Category;
  }

  void checkAnswer(bool selectedAnswer) {
    if (selectedAnswer == category.questions[currentQuestionIndex].answer) {
      setState(() {
        score++;
      });
    }
    nextQuestion();
  }

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < category.questions.length - 1) {
        currentQuestionIndex++;
      } else {
        Navigator.pushNamed(context, '/score_view', arguments: {
          'score': score,
          'totalQuestions': category.questions.length,
          'categoryName': category.name,
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              category.description,
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                category.imageUrl,
                fit: BoxFit.cover,
                height: 150,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Question ${currentQuestionIndex + 1}/${category.questions.length}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              category.questions[currentQuestionIndex].question,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => checkAnswer(true),
                  child: const Text('True'),
                ),
                ElevatedButton(
                  onPressed: () => checkAnswer(false),
                  child: const Text('False'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Score: $score',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
