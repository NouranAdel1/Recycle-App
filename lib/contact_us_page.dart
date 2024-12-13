import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // First Card - Phone
            ContactCard(
              title: 'Phone',
              icon: Icons.phone_outlined,
              content: '+1 234 567 890',
            ),
            SizedBox(height: 16),
            // Second Card - Email
            ContactCard(
              title: 'Email',
              icon: Icons.email_outlined,
              content: 'support@example.com',
            ),
            SizedBox(height: 16),
            // Third Card - Address
            ContactCard(
              title: 'Address',
              icon: Icons.location_on_outlined,
              content: '123 Main St, City, Country',
            ),
            SizedBox(height: 16),
            // Fourth Card - Social Media
            ContactCard(
              title: 'Social Media',
              icon: Icons.person_outlined,
              content: '@username on Twitter',
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String content;

  const ContactCard({
    required this.title,
    required this.icon,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.black, size: 40),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(content,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                        color: const Color.fromARGB(255, 0, 0, 0))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
