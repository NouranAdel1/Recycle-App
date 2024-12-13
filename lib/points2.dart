import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/points.dart';

class Points2Page extends StatefulWidget {
  @override
  _Points2PageState createState() => _Points2PageState();
}

class _Points2PageState extends State<Points2Page> {
  int _points = 40050;
  PageController _pageController1 = PageController();
  PageController _pageController2 = PageController();
  int _pressedBoxIndex = -1;
  int _currentIndex1 = 0;
  int _currentIndex2 = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentIndex1 < 2) {
        _currentIndex1++;
      } else {
        _currentIndex1 = 0;
      }
      _pageController1.animateToPage(
        _currentIndex1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });

    Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentIndex2 < 2) {
        _currentIndex2++;
      } else {
        _currentIndex2 = 0;
      }
      _pageController2.animateToPage(
        _currentIndex2,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recycle Points',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Image.asset(
                  'assets/images/image14.png',
                  width: 20,
                  height: 20,
                ),
                SizedBox(width: 8),
                Text(
                  '$_points',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 5),
                  ],
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Daily Check-in',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                    SizedBox(height: 8),
                    Divider(color: Colors.grey[300]),
                    SizedBox(height: 16),
                    // Use a Row with adjusted widths and margins
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(7, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: buildDonationBox(
                              '+${(index + 1) * 50}',
                              index + 1,
                              'assets/images/image14.jpg',
                              index,
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(height: 16),
                    Divider(color: Colors.grey[300]),
                    Center(
                      child: Column(
                        children: [
                          Text('Check-in daily & earn rewards',
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(height: 5),
                          Text('Surprise every week',
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(height: 18),
                          ElevatedButton(
                            onPressed: () {
                              _showPointsPopup(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF388E3C),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              padding: EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 24),
                            ),
                            child: Text('Get More Points',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Exchange your points',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
              SizedBox(height: 16),
              Container(
                height: 180,
                child: PageView(
                  controller: _pageController1,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4.0), // Add spacing here
                      child: Image.asset('assets/images/image32.jpg',
                          width: 200, fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Image.asset('assets/images/points3.jpg',
                          width: 200, fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Image.asset('assets/images/points2.jpg',
                          width: 200, fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Divider(color: Colors.grey[300]),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Donate Your Points',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
              SizedBox(height: 16),
              Container(
                height: 180,
                child: PageView(
                  controller: _pageController2,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Image.asset('assets/images/image8.jpg',
                          width: 200, fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Image.asset('assets/images/point2.1.jpg',
                          width: 200, fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Image.asset('assets/images/points3.1.jpg',
                          width: 200, fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDonationBox(String amount, int day, String image, int index) {
    bool isPressed = _pressedBoxIndex == index;

    return GestureDetector(
      onTap: () {
        if (index == 0) {
          setState(() {
            _pressedBoxIndex = isPressed ? -1 : index;
          });
        } else {
          _showErrorDialog(context);
        }
      },
      child: Column(
        children: [
          Container(
            width: 42, // Smaller width
            height: 70, // Smaller height
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
              boxShadow: isPressed
                  ? [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 4),
                      ),
                    ]
                  : [],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(amount, style: TextStyle(color: Colors.grey)),
                SizedBox(height: 8),
                Image.asset(image, width: 25, height: 25), // Smaller image size
              ],
            ),
          ),
          SizedBox(height: 5), // Space below the box
          Text('Day $day', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  void _showPointsPopup(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Your Recycle Points:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/image14.png',
                      width: 40, height: 40),
                  SizedBox(width: 8),
                  Text(
                    '$_points Points',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                '1 Recycle Point = 1 EGP',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Opss!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.red,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'Come back tomorrow for more points',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }
}//
