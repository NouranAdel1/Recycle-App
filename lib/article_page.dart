import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ArticlePage(),
  ));
}

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // Make the app bar background transparent
        elevation: 0, // Remove shadow from the app bar
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              color:
                  const Color.fromARGB(255, 255, 255, 255)), // Back button icon
          onPressed: () {
            // Navigate to the home page (Main page)
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding:
              EdgeInsets.only(right: 60), // Adjust title spacing if necessary
          child: Text(
            'Article', // Title in the app bar
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.green, // Background color for the article section
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // "Thread" at the top left corner
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Thread',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Date in grey color
              Text(
                'Nov 30, 2024',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 20),

              // Image in the center
              Center(
                child: Image.asset(
                  'assets/images/image7.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),

              // "Egypt" in small grey font at the right of the image
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Egypt',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Title in bold, larger font
              Text(
                'Egyptian GenZers are fighting against plastic pollution',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),

              // The long text (body content)
              Text(
                'In recent years, plastic pollution has become a growing concern in Egypt.\n'
                'The country is one of the largest producers of plastic waste in the world, with an estimated 3.2 million tons generated annually. '
                'This waste often ends up in the Nile River, the Mediterranean Sea, and on the streets. '
                'Single-use plastic bags in Egypt are a major sources of plastic pollution. These bags are inexpensive and widely available, '
                'leading many Egyptians to use them for everyday tasks such as disposing of waste and carrying items.\n\n'
                'However, these bags often end up as litter in streets and public spaces where they take years to degrade and harm wildlife and marine life. '
                'Lack of proper waste management infrastructure has led to an increase in plastic pollution. Many Egyptians do not have access to adequate waste collection and disposal services, '
                'leading to a build-up of trash in urban and rural areas.\n\n'
                'This not only endangers the environment, but also poses a significant public health risk by attracting pests and spreading diseases mostly to children. '
                'Egypt\'s plastic problem also affects its economy, as it is heavily dependent on tourism. Plastic pollution has a negative impact on the image and reputation of Egypt\'s popular sights. '
                'Additionally, plastic pollution has continuously endangered the fishing and agriculture industries, which are important sources of income for many Egyptians.\n\n'
                'What are Gen Z doing in response?\n\n'
                'A youth-led organization, TileGreen, is dedicated to tackling the issue of plastic pollution. Founded in 2021 with the goal of reducing the amount of plastic waste in Egypt and promoting sustainable practices, '
                'TileGreen recycles all manner of plastics into compact bricks used as outdoor pavers for walkways and garages.\n\n'
                'One of its most innovative approaches is the "Plastic-to-Fuel" initiative, which involves collecting plastic waste and converting it into fuel. This provides energy for transportation and other purposes.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
