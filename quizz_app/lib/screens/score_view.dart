import 'package:flutter/material.dart';
import 'package:quizz_app/_widgets/layout/custom_app_bar.dart';

class ScoreView extends StatelessWidget {
  const ScoreView({super.key});

  @override
  Widget build(BuildContext context) {
    final score = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // should display the argument
          Text('Scor:',
              style:
                  const TextStyle(fontSize: 70, fontWeight: FontWeight.bold)),
          Text('$score',
              style:
                  const TextStyle(fontSize: 74, fontWeight: FontWeight.bold)),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/homepage");
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8), // Set the desired radius here
                  ),
                  textStyle: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300)),
              child: const Text("Back to main screeen"))
        ],
      )),
    );
  }
}
