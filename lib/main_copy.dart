import 'package:flutter/material.dart';
import 'screens/book_list.dart';

void main() {
  runApp(const BookstoreApp());
}

class BookstoreApp extends StatelessWidget {
  const BookstoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookList(),
    );
  }
}
