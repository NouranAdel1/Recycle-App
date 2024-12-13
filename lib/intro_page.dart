import 'package:flutter/material.dart';
import 'package:myapp/signin_page.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), _autoSlide);
  }

  void _autoSlide() {
    Future.delayed(Duration(seconds: 3), () {
      if (_currentPage < 2) {
        _pageController.animateToPage(
          _currentPage + 1,
          duration: Duration(seconds: 2),
          curve: Curves.easeInOut,
        );
        setState(() {
          _currentPage++;
        });
      } else {
        _pageController.animateToPage(
          0,
          duration: Duration(seconds: 2),
          curve: Curves.easeInOut,
        );
        setState(() {
          _currentPage = 0;
        });
      }
      _autoSlide();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          // Auto-Sliding Images
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: <Widget>[
                _buildImagePage('assets/images/image1.jpg'),
                _buildImagePage('assets/images/image2.jpg'),
                _buildImagePage('assets/images/image3.jpg'),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index ? Colors.green : Colors.grey,
                  ),
                );
              }),
            ),
          ),

          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recycle your waste products!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Hi, in here you can collect your trash and earn money. Tap Start and Enjoy!!!',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to SignInPage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Button color
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                  child: Text(
                    'Start',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white), // Bold white text
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to build each page with an image
  Widget _buildImagePage(String imagePath) {
    return Center(
      child: Image.asset(imagePath),
    );
  }
}
