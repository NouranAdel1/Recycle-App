import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DonationPage3(),
  ));
}

class DonationPage3 extends StatefulWidget {
  @override
  _DonationPage3State createState() => _DonationPage3State();
}

class _DonationPage3State extends State<DonationPage3> {
  String? selectedDonationBox;
  TextEditingController recyclePointsController = TextEditingController();

  bool isManualEntry = false;
  bool isBoxSelected = false;

  void showErrorPopup(String message) {
    showDialog(
      context: context,
      builder: (context) => ErrorPopup(message: message),
    );
  }

  void showSuccessPopup() {
    showDialog(
      context: context,
      builder: (context) => DonationSuccessPopup(),
    );
  }

  void handleDonateNow() {
    if (selectedDonationBox == null && recyclePointsController.text.isEmpty) {
      showErrorPopup(
          'No donation method chosen, please choose a method then click Donate Now.');
    } else if (selectedDonationBox != null &&
        recyclePointsController.text.isNotEmpty) {
      showErrorPopup('Choose only one way of donating.');
    } else if (selectedDonationBox != null ||
        recyclePointsController.text.isNotEmpty) {
      showSuccessPopup();
    }
  }

  void toggleDonationBox(String box) {
    setState(() {
      if (selectedDonationBox == box) {
        selectedDonationBox = null;
        isBoxSelected = false;
        recyclePointsController.clear();
      } else {
        selectedDonationBox = box;
        isBoxSelected = true;
        recyclePointsController.clear();
      }
    });
  }

  void toggleManualInput() {
    setState(() {
      if (isBoxSelected) {
        showErrorPopup('Choose only one way of donating.');
      } else {
        isManualEntry = !isManualEntry;
        recyclePointsController.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF4CAF50),
        title: Text(
          'Donate',
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
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            children: [
              SizedBox(height: 24), // Increased space above the image
              Center(
                child: Image.asset('assets/images/image8.jpg',
                    width: MediaQuery.of(context).size.width, height: 220),
              ),
              SizedBox(height: 16),
              Text(
                'Help Palestine and Lebanon',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF388E3C),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 16),
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
                      SizedBox(height: 4),
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
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DonationBox(
                    text: 'Donate 10k',
                    isSelected: selectedDonationBox == '10k',
                    onTap: () {
                      toggleDonationBox('10k');
                    },
                  ),
                  DonationBox(
                    text: 'Donate 50k',
                    isSelected: selectedDonationBox == '50k',
                    onTap: () {
                      toggleDonationBox('50k');
                    },
                  ),
                  DonationBox(
                    text: 'Donate 100k',
                    isSelected: selectedDonationBox == '100k',
                    onTap: () {
                      toggleDonationBox('100k');
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              GestureDetector(
                onTap: toggleManualInput,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    controller: recyclePointsController,
                    enabled: !isBoxSelected,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Recycle points manually',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: handleDonateNow,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF388E3C),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: Center(
              child: Text(
                'Donate Now',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DonationBox extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const DonationBox({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xFF388E3C) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xFF4CAF50), width: 2),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Color(0xFF388E3C),
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

class ErrorPopup extends StatelessWidget {
  final String message;

  const ErrorPopup({required this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      backgroundColor: Colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            message,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 16,
            ),
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
                  'Close',
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

class DonationSuccessPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      backgroundColor: Colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Donation Success!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF388E3C),
              fontSize: 20,
            ),
          ),
          SizedBox(height: 16),
          Image.asset('assets/images/image11.jpg', width: 100, height: 100),
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
