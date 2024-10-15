import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizz_app/_widgets/category_card.dart';
import 'package:quizz_app/_widgets/layout/custom_app_bar.dart';

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
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, String>> categories = [
    {
      "category": "Sport",
      "description": "78ae36f9-3d0b-595f-863a-1cb5d1c88655",
      "title": "Lorem ipsum dolor sit amet consectur",
    },
    {
      "category": "Sport",
      "description": "78ae36f9-3d0b-595f-863a-1cb5d1c88655",
      "title": "Lorem ipsum dolor sit amet consectur",
    },
    {
      "category": "Sport",
      "description": "78ae36f9-3d0b-595f-863a-1cb5d1c88655",
      "title": "Lorem ipsum dolor sit amet consectur",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(),
        body: Padding(
          padding: EdgeInsets.all(23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "Choose a Category",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: [
                  CategoryCard(
                    text: "Sport",
                    description: "This is a description for Hello",
                    category: "Greeting",
                  ),
                  CategoryCard(
                    text: "Technology",
                    description: "This is a description for World",
                    category: "Place",
                  ),
                  CategoryCard(
                    text: "Science",
                    description: "This is a description for Flutter",
                    category: "Framework",
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
