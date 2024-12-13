import 'package:flutter/material.dart';

class SelectTrash extends StatelessWidget {
  const SelectTrash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Plastic',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(64, 168, 88, 1), // Custom color
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Wide cards list
              buildCategoryCard(
                imageUrl: 'https://via.placeholder.com/300x200',
                name: 'Plastic Bottles',
                price: '\$1.20',
              ),
              buildCategoryCard(
                imageUrl: 'https://via.placeholder.com/300x200',
                name: 'Glass Bottles',
                price: '\$0.80',
              ),
              buildCategoryCard(
                imageUrl: 'https://via.placeholder.com/300x200',
                name: 'Old Electronics',
                price: '\$5.00',
              ),
              buildCategoryCard(
                imageUrl: 'https://via.placeholder.com/300x200',
                name: 'Paper Waste',
                price: '\$0.50',
              ),
              buildCategoryCard(
                imageUrl: 'https://via.placeholder.com/300x200',
                name: 'Metal Cans',
                price: '\$1.00',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to build a category card
  Widget buildCategoryCard(
      {required String imageUrl, required String name, required String price}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imageUrl,
                width: 120, // Fixed width for the image
                height: 80, // Fixed height for the image
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            // Text section (name and price)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Estimated Price: $price',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
