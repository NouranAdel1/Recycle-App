import 'package:flutter/material.dart';

class ChangeProfilePage extends StatelessWidget {
  const ChangeProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Personal Details Header
            SectionHeader(title: 'Personal Details'),
            // Personal Details Form
            ChangeProfileCard(
              label: 'Full Name',
              icon: Icons.person,
              hint: 'FirstName LastName',
              onChanged: (value) {},
            ),
            ChangeProfileCard(
              label: 'Email',
              icon: Icons.email,
              hint: 'email@example.com',
              onChanged: (value) {},
            ),
            ChangeProfileCard(
              label: 'Phone',
              icon: Icons.phone,
              hint: '+20114455667',
              onChanged: (value) {},
            ),
            SizedBox(height: 30),
            // Change Password Header
            SectionHeader(title: 'Change Password'),
            // Change Password Form
            ChangeProfileCard(
              label: 'New Password',
              icon: Icons.lock,
              hint: 'Enter new password',
              onChanged: (value) {},
            ),
            ChangeProfileCard(
              label: 'Confirm Password',
              icon: Icons.lock,
              hint: 'Confirm new password',
              onChanged: (value) {},
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Save Changes',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    );
  }
}

class ChangeProfileCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final String hint;
  final ValueChanged<String> onChanged;

  const ChangeProfileCard({
    required this.label,
    required this.icon,
    required this.hint,
    required this.onChanged,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.black),
                SizedBox(width: 16),
                Text(
                  label,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            TextFormField(
              initialValue: hint,
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: hint,
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
