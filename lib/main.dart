import 'package:flutter/material.dart';
import 'screens/book_list.dart';

void main() {
  runApp(const BookstoreApp());
}

class BookstoreApp extends StatelessWidget {
  const BookstoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ceylon Bookstore',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const BookList(),
    );
  }
}
