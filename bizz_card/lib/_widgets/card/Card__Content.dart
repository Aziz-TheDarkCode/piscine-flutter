import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        'assets/images/qr.png',
        fit: BoxFit.cover,
        height: 300,
        width: 300,
      ),
      const Text(
        "+221 78 630 06 14",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      const Text("24 years old",
          style: TextStyle(color: Colors.white, fontSize: 20)),
    ]);
  }
}
