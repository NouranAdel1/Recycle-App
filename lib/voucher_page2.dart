import 'package:flutter/material.dart';
import 'package:myapp/points.dart';

void main() {
  runApp(MaterialApp(
    home: VoucherPage2(),
  ));
}

class VoucherPage2 extends StatelessWidget {
  const VoucherPage2({super.key});

  void showExchangeSuccess(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => ExchangeSuccessPopup(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF4CAF50),
        title: Text(
          'Voucher Details',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => PointsPage()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/image12.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: 320,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Coffee Bean : Discount 50%',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF388E3C)),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Image.asset(
                    'assets/images/image14.jpg',
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '500 Recycle points',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                'Terms and Conditions',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600]),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 32,
                  child: Text(
                    """
1. Promo applies to orders from the 'Espresso Based' menu at Fore Coffee.
2. This promotion only applies to Regular sized drinks.
3. This voucher is only valid for purchases via the application using the "Pick Up" method and cannot be delivered.
4. Minimum transaction 200 EGP to get a 50% discount.
5. Maximum Discount 50 EGP
6. Vouchers can only be used until the validity date stated
7. Vouchers can only be used for 6x/user/ device/month.
8. This voucher is only valid for product costs. Does not apply to delivery and additional fees (up size, sugar level, and extra shots of espresso).
9. Use of this promo voucher can be combined with a free cup voucher
                    """,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        color: Colors.white,
        child: ElevatedButton(
          onPressed: () => showExchangeSuccess(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF4CAF50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(vertical: 16),
          ),
          child: Text(
            'Exchange Points',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class ExchangeSuccessPopup extends StatelessWidget {
  const ExchangeSuccessPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Exchange Success',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xFF388E3C)),
          ),
          SizedBox(height: 16),
          Image.asset(
            'assets/images/image11.jpg',
            width: 100,
            height: 100,
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF388E3C), width: 2),
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Center(
                child: Text(
                  'Back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF388E3C),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
