import 'package:flutter/material.dart';
import 'package:quizz_app/screens/detailed_view.dart';
import 'package:quizz_app/screens/home.dart';
import 'package:quizz_app/screens/score_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizz App',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: "Manrope"),
      home: const MyHomePage(title: 'Quizz app'),
      routes: {
        "/homepage": (context) => const MyHomePage(
              title: "Quizz",
            ),
        "/playground": (context) => const QuizPlayground(),
        "/score_view": (context) => const ScoreView()
      },
    );
  }
}
