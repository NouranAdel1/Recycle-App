import 'package:flutter/material.dart';

class TrashAdd extends StatelessWidget {
  TrashAdd({super.key});

  final List<Map<String, String>> items = [
    {
      'image': 'assets/images/plastic.png',
      'name': 'Plastic',
    },
    {
      'image': 'assets/images/paper.png',
      'name': 'Paper',
    },
    {
      'image': 'assets/images/metal.png',
      'name': 'Metal',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Trash',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(64, 168, 88, 1), // Custom color
      ),
      body: SingleChildScrollView(
        // Wrapping the entire body in SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title for the GridView section
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Icon -> Text
                  Row(
                    children: [
                      Image.asset('assets/images/Article.png'),
                      SizedBox(width: 8), // Space between icon and text
                      Text(
                        'Choose Category',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 94, 94, 94),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 10),

              // GridView of Cards (Wrapped with Expanded to prevent overflow)
              GridView.builder(
                shrinkWrap:
                    true, // Makes the GridView take only the required space
                physics:
                    NeverScrollableScrollPhysics(), // Disable scrolling for the GridView
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two columns
                  crossAxisSpacing: 10, // Horizontal space between items
                  mainAxisSpacing: 10, // Vertical space between items
                  childAspectRatio:
                      0.7, // Adjust the aspect ratio to make cards taller
                ),
                itemCount: 3, // Number of items in the grid
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 170,
                    height: 280, // Increased height for a taller card
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      color: Colors.white,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Image.asset(
                              items[index]['image'] ?? '',
                              width: 170, // Fixed width for the image
                              height:
                                  140, // Increased image height for better balance
                              fit: BoxFit.cover,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Action when the card is tapped
                              print('Card $index tapped');
                            },
                            child: Center(
                              child: Text(
                                items[index]['name'] ?? '',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
