import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key});
  static const Color primaryColosr = Color.fromARGB(255, 179, 145, 252);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/me.jpg',
              fit: BoxFit.cover,
              height: 80,
              width: 80,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Abdou Aziz Ndiaye",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                const Text(
                  "Mobile Developer at Zone01 Dakar",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(height: 4),
                const Text(
                  "abdouaziznjay@gmail.com",
                  style: TextStyle(color: primaryColosr, fontSize: 20),
                ),
                const SizedBox(height: 12),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                      'https://ih1.redbubble.net/image.1117123701.2902/flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
                      fit: BoxFit.cover,
                      height: 25,
                      width: 25,
                    ),
                    Image.network(
                      'https://avatars.githubusercontent.com/u/50342827?v=4?s=400',
                      fit: BoxFit.cover,
                      height: 25,
                      width: 25,
                    ),
                    Image.network(
                      'https://i.pinimg.com/originals/e5/0f/a4/e50fa4a73bb55963754d35478d2959c2.png',
                      fit: BoxFit.cover,
                      height: 25,
                      width: 25,
                    ),
                    Image.network(
                      'https://telezavr.com/upload/iblock/48e/rq1iznhkyc2i7pgejfqncyoyp3nsmjyp.png',
                      fit: BoxFit.cover,
                      height: 25,
                      width: 25,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
