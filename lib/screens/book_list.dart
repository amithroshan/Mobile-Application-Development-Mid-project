import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/book_detail.dart';
import '../widgets/book.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Child Bookstore',
          style: TextStyle(
            color: Color.fromARGB(255, 146, 236, 0),
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            shadows: [
              Shadow(
                color: Colors.black45,
                offset: Offset(2, 2),
                blurRadius: 1,
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 73, 100, 185),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(
                    title: 'The Conjurers',
                    author: 'Brian Anderson',
                    imagePath:
                        'assets/images/the conjurers fight of thr fallen.png',
                    price: 1250.0,
                  ),
                ),
              );
            },
            child: const Book(
              coverImagePath:
                  'assets/images/the conjurers fight of thr fallen.png',
              title: 'The Conjurers',
              author: 'Brian Anderson',
              price: 1250.0,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(
                    title: 'The Lands of Luxury',
                    author: 'Jon Tilton',
                    imagePath: 'assets/images/the lands of luxury.png',
                    price: 1000.0,
                  ),
                ),
              );
            },
            child: const Book(
              coverImagePath: 'assets/images/the lands of luxury.png',
              title: 'The Lands of Luxury',
              author: 'Jon Tilton',
              price: 1000.0,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(
                    title: 'We Could be Heroes',
                    author: 'Margaret Finnegan',
                    imagePath: 'assets/images/we could be heroes.png',
                    price: 950.0,
                  ),
                ),
              );
            },
            child: const Book(
              coverImagePath: 'assets/images/we could be heroes.png',
              title: 'We Could be Heroes',
              author: 'Margaret Finnegan',
              price: 950.0,
            ),
          ),
        ],
      ),
    );
  }
}
