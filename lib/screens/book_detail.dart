import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  final String title;
  final String author;
  final String imagePath;
  final double price;

  const BookDetailScreen({
    super.key,
    required this.title,
    required this.author,
    required this.imagePath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 207, 207, 207),
      appBar: AppBar(
        title: Text("Child Bookstore",
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
            )),
        backgroundColor: const Color.fromARGB(255, 73, 100, 185),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 6)],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 6, 18, 187))),
              SizedBox(height: 8),
              Text(author,
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Image.asset(
                imagePath,
                height: 430,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 100),
              Text("Rs. ${price.toStringAsFixed(2)}",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown[300]),
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                          color: Color.fromARGB(255, 38, 80, 184),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown[300]),
                    child: Text("Buy Now",
                        style: TextStyle(
                            color: Color.fromARGB(255, 38, 80, 184),
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
