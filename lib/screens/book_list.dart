import 'package:flutter/material.dart';
import '../widgets/book.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ceylon Bookstore'),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        children: const [
          Book(
            coverImagePath: 'assets/images/rich-dad-poor-dad.jpg',
            title: 'Rich Dad, Poor Dad',
            author: 'Robert T. Kiyosaki',
            price: 1250.0,
          ),
          Book(
            coverImagePath: 'assets/images/the-alchemist.jpg',
            title: 'The Alchemist',
            author: 'Paulo Coelho',
            price: 1000.0,
          ),
          Book(
            coverImagePath: 'assets/images/men-are-from-mars.jpg',
            title: 'Men Are From Mars',
            author: 'John Gray',
            price: 950.0,
          ),
        ],
      ),
    );
  }
}
