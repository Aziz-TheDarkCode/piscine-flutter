import 'package:bizz_card/_widgets/card/Card__Content.dart';
import 'package:bizz_card/_widgets/card/Card__header.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [CardHeader(), CardContent()]);
  }
}
