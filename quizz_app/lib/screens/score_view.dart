import 'package:flutter/material.dart';
import 'package:quizz_app/_widgets/layout/custom_app_bar.dart';

class ScoreView extends StatelessWidget {
  const ScoreView({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final int score = args['score'];
    final int totalQuestions = args['totalQuestions'];
    final String categoryName = args['categoryName'];
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                categoryName,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'Your Score',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                '$score / $totalQuestions',
                style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent),
              ),
              const SizedBox(height: 20),
              Text(
                'Correct Answers: $score',
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                'Incorrect Answers: ${totalQuestions - score}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 40),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/homepage");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      // Add this line
                      borderRadius: BorderRadius.circular(
                          8), // Set the desired radius here
                    ),
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 235, 234, 234),
                        fontWeight: FontWeight.w300)),
                child: const Text(
                  "Back to Main Screen",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
