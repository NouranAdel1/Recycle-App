import 'package:flutter/material.dart';
import 'package:myapp/voucher_page2.dart';

void main() {
  runApp(MaterialApp(
    home: VoucherPage(),
  ));
}

class VoucherPage extends StatelessWidget {
  const VoucherPage({super.key});

  void navigateToVoucherPage2(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VoucherPage2()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4CAF50),
        title: Text(
          'Vouchers',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: Colors.grey[300]!, blurRadius: 8)
                  ],
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/image15.jpg',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Available for you',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    VoucherCard(
                      image: 'assets/images/image12.jpg',
                      title: 'Coffee Bean : Discount 50%',
                      points: '500 points',
                      onTap: () => navigateToVoucherPage2(context),
                    ),
                    SizedBox(height: 16),
                    Divider(color: Colors.grey[300]),
                    SizedBox(height: 16),
                    VoucherCard(
                      image: 'assets/images/image13.jpg',
                      title: 'SUPERMARKET: Cashback 15%',
                      points: '100 points',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VoucherCard extends StatelessWidget {
  final String image;
  final String title;
  final String points;
  final VoidCallback onTap;

  const VoucherCard({super.key, 
    required this.image,
    required this.title,
    required this.points,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.grey[300]!, blurRadius: 8)],
        ),
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(12), // Curved rectangular edges
              child: Image.asset(
                image,
                width: 120, // Adjusted for rectangular appearance
                height: 80, // Adjusted for rectangular appearance
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    points,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
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
