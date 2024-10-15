import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String _text;
  final String _description;
  final String _category;

  const CategoryCard({
    super.key,
    required String text,
    required String description,
    required String category,
  })  : _text = text,
        _description = description,
        _category = category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 23,
              child: Text(_category),
            ),
            Text(
              _text,
              style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Text(_description),
            const SizedBox(height: 23),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    textStyle: const TextStyle(color: Colors.white)),
                child: const Text("Start the quizz"))
          ],
        ),
      ),
    );
  }
}
