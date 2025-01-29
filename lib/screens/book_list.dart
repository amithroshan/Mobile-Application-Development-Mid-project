import 'package:flutter/material.dart';
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
            color: Color.fromARGB(
                255, 146, 236, 0), // Change this to your desired color
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 73, 100, 185),
      ),
      body: ListView(
        children: const [
          Book(
            coverImagePath:
                'assets/images/the conjurers fight of thr fallen.png',
            title: 'The Conjurers',
            author: 'Brian Anderson',
            price: 1250.0,
          ),
          Book(
            coverImagePath: 'assets/images/the lands of luxury.png',
            title: 'The Lands of Luxury',
            author: 'Jon Tilton',
            price: 1000.0,
          ),
          Book(
            coverImagePath: 'assets/images/we could be heroes.png',
            title: 'We Could be Heroes',
            author: 'Margaret Finnegan',
            price: 950.0,
          ),
        ],
      ),
    );
  }
}
