import 'package:bizz_card/_widgets/Bar.dart';
import 'package:bizz_card/_widgets/Card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static const Color primaryColor = Color(0xFF1A191C); // A vibrant blue
  static const Color primaryColosr = Color(0xFF9969FF); // A vibrant blue
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: ,
        appBar: AppBar(
          title: const Text("BizzCard"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: primaryColor,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/01-trame.png"),
                  opacity: .2,
                  fit: BoxFit.cover)),
          child: ProfileCard(),
        ));
  }
}
