import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String coverImagePath;
  final String title;
  final String author;
  final double price;

  const Book({
    super.key,
    required this.coverImagePath,
    required this.title,
    required this.author,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center title and author
          children: [
            // Title
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 6, 18, 187),
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            const SizedBox(height: 8),

            // Author
            Text(
              author,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16),

            // Cover Image (Larger size)
            Center(
              child: Image.asset(
                coverImagePath,
                height: 350, // Increased height for a larger image
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),

            // Price and Button Row
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Align price left and button right
              children: [
                // Price
                Text(
                  'Rs.${price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 25),
                // Add to Cart Button
                ElevatedButton(
                  onPressed: () {
                    // Add functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  child: const Text('Add to cart',
                      style: TextStyle(
                          fontSize: 16, // Adjust the size as needed
                          color: Color.fromARGB(255, 38, 80, 184),
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
