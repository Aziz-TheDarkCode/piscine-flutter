import 'package:flutter/material.dart';
import 'package:quizz_app/_widgets/categories.dart';
import 'package:quizz_app/_widgets/layout/custom_app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(appBar: const CustomAppBar(), body: Categories()),
    );
  }
}
