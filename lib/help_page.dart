import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF388E3C), // Green AppBar color
        title: Text(
          'Help',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins', // Poppins font style
            fontSize: 26,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(
                context); // Goes back to the previous page (Profile Page)
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.all(16.0), // Default padding for the whole page
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/FAQ.jpg', // Path to your FAQ image
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              // Title: Frequently Asked Questions
              SizedBox(height: 16),
              Text(
                'Frequently Asked Questions',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),

              // Divider
              SizedBox(height: 8),
              Divider(color: Colors.grey[300]),

              // Start of question-answer section with different padding
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0), // Custom padding for left & right
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Question 1
                    SizedBox(height: 16),
                    Text(
                      'What\'s recycle ?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),

                    // Answer 1
                    SizedBox(height: 8),
                    Text(
                      'Recycle is an online waste buying and selling application (Recycling platform). '
                      'Recycle connects waste producers (households, businesses, and offices) with the nearest local collectors (collectors), '
                      'making it easier to sell waste. Recycle focuses on waste recycling patterns in the upstream sector, '
                      'not waste transportation services or recycled handicrafts.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),

                    // Divider
                    SizedBox(height: 16),
                    Divider(color: Colors.grey[300]),

                    // Question 2
                    SizedBox(height: 16),
                    Text(
                      'How is Recycle different from a Waste Bank or other waste management services?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),

                    // Answer 2
                    SizedBox(height: 8),
                    Text(
                      'The Recycle service is free to use by anyone, we are not a garbage pick-up service company, '
                      'we try to provide more value than that, namely the garbage picked up by our partners, all of it will be recycled and not thrown into the landfill. '
                      'Whether it\'s a trash-selling service or a recycling program, everything gets recycled again.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),

                    // Divider
                    SizedBox(height: 16),
                    Divider(color: Colors.grey[300]),

                    // Question 3
                    SizedBox(height: 16),
                    Text(
                      'How to sell trash through Recycle?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),

                    // Answer 3
                    SizedBox(height: 8),
                    Text(
                      'Selling garbage through Recycle is very easy, make sure you have downloaded the Recycle application on iOS, then open the Recycle application, '
                      'select the "+ button" feature, enter waste information, address and pick-up time, submit and wait for collectors to pick up and pay for your waste. '
                      'For more details, see the guide to selling waste.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),

                    // Divider
                    SizedBox(height: 16),
                    Divider(color: Colors.grey[300]),

                    // Question 4
                    SizedBox(height: 16),
                    Text(
                      'What types of waste does Recycle manage?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),

                    // Answer 4
                    SizedBox(height: 8),
                    Text(
                      'Waste managed by Recycle is dry waste, such as:\n1. Plastic waste\n2. Paper trash\n3. Aluminum trash & cans\n'
                      '4. Iron & metal trash\n5. Electronic waste\n6. Glass bottle trash',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),

                    // Divider
                    SizedBox(height: 16),
                    Divider(color: Colors.grey[300]),

                    // Question 5
                    SizedBox(height: 16),
                    Text(
                      'How do you join as a Recycle partner?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),

                    // Answer 5
                    SizedBox(height: 8),
                    Text(
                      'If you are a business actor in the field of waste recycling such as collectors, waste banks, scavengers, or manufacturers of recycled products, '
                      'you can join as a partner of Recycle, read more about becoming a partner guide.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              // End of custom padding section
            ],
          ),
        ),
      ),
    );
  }
}
