import 'package:flutter/material.dart';
import 'package:quizz_app/_widgets/category_card.dart';
import 'package:quizz_app/models/category.dart';
import 'package:quizz_app/models/question.dart';

class Categories extends StatelessWidget {
  Categories({super.key});
  final List<Category> categories = [
    Category(
      "History",
      "https://sun9-82.userapi.com/impg/zG11CG06VRVOg1eMhK3F017tYTjhR6aIqvXgXQ/-0IKd8rKDc4.jpg?size=960x640&quality=95&sign=c54918b4ef94ec2b5a6c72a07b341189&c_uniq_tag=o0gVTINXJwXmdMeOLVGsMjZlvctluhtjGPXwDEWEsZE&type=album",
      [
        Question("The Declaration of Independence was signed in 1775.", false),
        Question(
            "Benjamin Franklin was the first President of the United States.",
            false),
        Question("World War II ended in 1946.", false),
        Question("The Roman Empire fell in the 5th century AD.", true),
        Question("The American Civil War lasted from 1861 to 1865.", true),
        Question("Cleopatra was Greek, not Egyptian.", true),
        Question(
            "The Great Wall of China was built in the 15th century.", false),
        Question("The French Revolution began in 1789.", true),
        Question("The Titanic sank on its maiden voyage in 1912.", true),
        Question(
            "Mahatma Gandhi led India's independence movement against British rule.",
            true),
      ],
      "Test your knowledge of historical events.",
    ),
    Category(
      "Games",
      "https://wotpack.ru/wp-content/uploads/2022/11/rasprodazha-igr-na-chernuju-pjatnicu.jpg",
      [
        Question(
            "Chess is considered a sport by the International Olympic Committee.",
            true),
        Question("The highest possible score in bowling is 360.", false),
        Question("Pac-Man was first released in the 1980s.", true),
        Question(
            "In soccer, a player can score directly from a corner kick.", true),
        Question(
            "The term 'Royal Flush' is used in Poker, not Blackjack.", true),
        Question(
            "Mario's brother in the Super Mario series is named Louis.", false),
        Question("Tetris was invented by an American programmer.", false),
        Question(
            "The battle royale genre was pioneered by the game PUBG.", false),
        Question("The Legend of Zelda's main character is named Zelda.", false),
        Question(
            "In the original Monopoly board, the most expensive property is Boardwalk.",
            true),
      ],
      "Challenge yourself with fun games.",
    ),
    Category(
      "Science",
      "https://vplate.ru/images/article/orig/2020/09/professii-svyazannye-s-himiej.jpg",
      [
        Question("Water's chemical formula is H2O2.", false),
        Question("The chemical symbol for silver is Ag.", true),
        Question("Venus is the hottest planet in our solar system.", true),
        Question("Plants release oxygen during photosynthesis.", true),
        Question("The human body has four lungs.", false),
        Question("Light travels faster than sound.", true),
        Question("Absolute zero is 0°C.", false),
        Question(
            "Oxygen is the most abundant element in the Earth's crust.", false),
        Question("All bacteria are harmful to humans.", false),
        Question(
            "The human heart beats an average of 100,000 times per day.", true),
      ],
      "Explore the wonders of science.",
    ),
    Category(
      "Films",
      "https://glocalafterschool.com/wp-content/uploads/2017/03/Movie-making4.jpg",
      [
        Question("'Inception' was directed by Steven Spielberg.", false),
        Question("'Titanic' won 11 Academy Awards.", true),
        Question("'The Lion King' is Pixar's highest-grossing animated film.",
            false),
        Question(
            "Heath Ledger won an Oscar for his role as the Joker in 'The Dark Knight'.",
            true),
        Question(
            "In the Harry Potter series, Dumbledore was played by the same actor in all films.",
            false),
        Question("'Forrest Gump' was based on a true story.", false),
        Question("The fictional metal in 'Black Panther' is called vibranium.",
            true),
        Question(
            "Leonardo DiCaprio won his first Oscar for 'The Revenant'.", true),
        Question(
            "Darth Vader says 'Luke, I am your father' in 'The Empire Strikes Back'.",
            false),
        Question(
            "The character Jack Dawson in 'Titanic' was a real passenger on the ship.",
            false),
      ],
      "Test your knowledge of popular films.",
    ),
    Category(
      "Music",
      "https://www.fundjstuff.com/images/wallpapers/classic-mic-and-mixer-108.jpg",
      [
        Question(
            "Beethoven became completely deaf by the end of his life.", true),
        Question("Elvis Presley was born in New York.", false),
        Question(
            "Michael Jackson's 'Thriller' is the best-selling album of all time.",
            true),
        Question("Freddie Mercury was the lead singer of The Rolling Stones.",
            false),
        Question("The Beatles formed in Manchester.", false),
        Question(
            "Adele's '21' album was named after her age when she recorded it.",
            true),
        Question("Taylor Swift began her career as a pop artist.", false),
        Question("Mozart composed his first piece of music at age 5.", true),
        Question("Ed Sheeran wrote the song 'Love Yourself' for Justin Bieber.",
            true),
        Question("The first Woodstock festival was held in 1969.", true),
      ],
      "Discover your knowledge of music genres.",
    ),
    Category(
      "Math",
      "https://rivne-city.com/sites/default/files/styles/wide_background/public/images/news/2018/04/238938.png?itok=YvI6hnpK",
      [
        Question("Pi is a rational number.", false),
        Question("The square root of 25 is 6.", false),
        Question(
            "In a right-angled triangle, the square of the hypotenuse equals the sum of squares of the other two sides.",
            true),
        Question(
            "The sum of the angles in a quadrilateral is 360 degrees.", true),
        Question("1 is considered a prime number.", false),
        Question("The symbol for division (÷) is called an obelus.", true),
        Question("20% of 80 is equal to 80% of 20.", true),
        Question("There are 13 prime numbers between 1 and 40.", false),
        Question("The Fibonacci sequence starts with 1, 1, 2, 3, 5...", true),
        Question(
            "In statistics, the mean is always equal to the median.", false),
      ],
      "Challenge yourself with math problems.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Choose a Category",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 6,
            runSpacing: 12,
            children: [
              ...categories
                  .map((category) => CategoryCard(category: category))
                  .toList(),
            ],
          )
        ],
      ),
    );
  }
}
