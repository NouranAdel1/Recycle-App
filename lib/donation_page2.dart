import 'package:flutter/material.dart';
import 'package:myapp/donation_page3.dart';

class DonationPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF4CAF50),
        title: Text('Donate',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous page (DonationPage)
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        // Wrap the body with SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Image.asset('assets/images/image8.jpg',
                    width: MediaQuery.of(context).size.width, height: 200),
              ),
              SizedBox(height: 25),
              // Title for the donation
              Text(
                'Help Palestine and Lebanon',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF388E3C),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 25),
              // Donation stats
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '2000+ Donated',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF388E3C),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                          height: 1), 
                      Image.asset(
                        'assets/images/image10.jpg',
                        width: 100,
                        height: 30,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Total Donations',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF388E3C),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '400,000 EGP',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 40),
              // Donate Now button
              GestureDetector(
                onTap: () {
                  // Navigate to DonationPage3 when button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DonationPage3()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: Color(0xFF4CAF50),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Donate Now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              // Description text
              Text(
                'You can help support Palestine and Lebanon in the face of ongoing violence. Your donation will provide essential meals for children and offer families the protection of shelter, ensuring they have a safe place to sleep during these challenging times.',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}//
