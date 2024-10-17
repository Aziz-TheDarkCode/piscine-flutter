import 'package:flutter/material.dart';
import 'package:quizz_app/models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category _category;

  const CategoryCard({super.key, required Category category})
      : _category = category;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 178,
      // height: 240,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: .4),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                _category.imageUrl,
                fit: BoxFit.cover,
                height: 89,
                width: 178,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              _category.name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 22,
              child: Text(
                _category.description,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 178,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/playground",
                        arguments: _category);
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
                          color: Colors.white, fontWeight: FontWeight.w300)),
                  child: const Text("Start the quizz ✨")),
            )
          ],
        ),
      ),
    );
  }
}
