import 'package:flutter/material.dart';
import 'package:myapp/contact_us_page.dart';
import 'package:myapp/help_page.dart';
import 'package:myapp/history_page.dart';
import 'package:myapp/signin_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        // Wrap the body in SingleChildScrollView to make it scrollable
        child: Column(
          children: [
            // Profile Card with name, email, phone, and points
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 40, // Profile picture size
                            backgroundImage: AssetImage(
                                'assets/profile_pic.jpg'), // Replace with your profile image asset
                          ),
                          SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'FirstName Lastname', // Placeholder name
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Email@example.com', // Placeholder email
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              Text(
                                '+20 1112223334', // Placeholder phone number
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed:
                                () {}, // Define the action when the button is pressed
                            icon: Icon(
                              Icons.edit, // Pen icon for customization/editing
                              color: Colors
                                  .green, // You can customize the color if needed
                            ),
                          )
                        ],
                      ),
                      Divider(thickness: 1),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/image14.png',
                            width: 30,
                            height: 30,
                          ),
                          SizedBox(width: 8), // Space between icon and text
                          Text(
                            '10.000 Point',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            Icons
                                .chevron_right, // Replace with the desired icon
                            color: Colors.green,
                            size: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Buttons
            ProfileButton(
              icon: Icons.contact_mail,
              text: 'Contact Us',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsPage()),
                );
              },
            ),
            ProfileButton(
              icon: Icons.history,
              text: 'History',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HistoryActivityPage()),
                );
              },
            ),
            ProfileButton(
              icon: Icons.help_outline,
              text: 'Help',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpPage()),
                );
              },
            ),
            ProfileButton(
              icon: Icons.delete,
              text: 'Delete Account',
              onPressed: () {},
              textColor: Colors.red, // Red text for delete account
            ),
            ProfileButton(
              icon: Icons.logout,
              text: 'Logout',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
              textColor: Colors.red, // Red text for logout
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  final Color? textColor;

  const ProfileButton({
    required this.icon,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          backgroundColor: Colors.white,
          side: BorderSide(color: Colors.grey.shade300),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 16),
            Icon(icon, color: Colors.black),
            SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
