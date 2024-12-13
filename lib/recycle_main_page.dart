// recycle_main_page.dart
import 'package:flutter/material.dart';
import 'package:myapp/article_page.dart';
import 'package:myapp/donation_page.dart';
import 'package:myapp/events_page.dart';
import 'package:myapp/location_screen.dart';
import 'package:myapp/points.dart';
import 'package:myapp/profile_page.dart';
import 'package:myapp/voucher_page.dart';

class RecycleMainPage extends StatefulWidget {
  const RecycleMainPage({super.key});

  @override
  State<RecycleMainPage> createState() => _RecycleMainPageState();
}

class _RecycleMainPageState extends State<RecycleMainPage> {
  final List<Map<String, String>> items = [
    {
      'image': 'assets/images/Article1.png',
      'name': 'The Important Role of Gen Z in the Climate Change Agenda',
    },
    {
      'image': 'assets/images/Article2.png',
      'name': 'How Much CO2 is Generated During the Homecoming Journey',
    },
    {
      'image': 'assets/images/Article3.png',
      'name': 'The Story Behind the 2023 Trash Collection World Cup',
    },
    {
      'image': 'assets/images/Article4.png',
      'name': 'Understanding Plastic.',
    },
    {
      'image': 'assets/images/Article1.png',
      'name': 'Our River, Our Responsibility.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'assets/images/image17.jpg',
              width: 53,
              height: 46.5,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Recycle',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(64, 168, 88, 1),
                Color.fromRGBO(64, 168, 88, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Title Section
            Stack(
              children: [
                Image.asset(
                  'assets/images/image31.3.jpg',
                  fit: BoxFit.cover, // Ensures the image covers the entire area
                  width: MediaQuery.of(context).size.width,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          'Hi User!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      // Card View Section
                      SizedBox(
                        width: 360,
                        height: 195,
                        child: Card(
                          elevation: 16,
                          shadowColor: const Color.fromARGB(255, 46, 46, 46),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // Icon -> Text
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/image14.png',
                                              width: 40,
                                              height: 40,
                                            ),
                                            SizedBox(
                                                width:
                                                    8), // Space between icon and text
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          PointsPage()),
                                                );
                                              },
                                              child: Row(
                                                children: [
                                                  Text(
                                                    '10.000 Point',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(width: 4),
                                                  Icon(
                                                    Icons
                                                        .chevron_right, // Replace with the desired icon
                                                    color: Colors.green,
                                                    size: 20,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                            width:
                                                75), // Space between the two sections
                                        // Info Icon
                                        IconButton(
                                          icon: Icon(
                                            size: 30,
                                            Icons.info_outline,
                                            color: Colors.grey,
                                          ),
                                          onPressed: () {
                                            // Action for info icon
                                          },
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color: Color.fromRGBO(128, 128, 128, 30),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DonationPage()),
                                                );
                                              },
                                              //Icon(Icons.home, color: Colors.white)
                                              icon: Image.asset(
                                                  'assets/images/Donation.png'),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromRGBO(
                                                    64, 168, 88, 1),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                fixedSize: Size(70,
                                                    70), // Square button size
                                              ),
                                            ),
                                            Text(
                                              "Donation",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        SizedBox(width: 110),
                                        Column(
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          VoucherPage()),
                                                );
                                              },
                                              //Icon(Icons.home, color: Colors.white)
                                              icon: Image.asset(
                                                  'assets/images/Vouchers.png'),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromRGBO(
                                                    64, 168, 88, 1),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8)),
                                                fixedSize: Size(70,
                                                    70), // Square button size
                                              ),
                                            ),
                                            Text(
                                              "Vouchers",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Icon -> Text
                  Row(
                    children: [
                      Image.asset('assets/images/Calender.png'),
                      SizedBox(width: 8), // Space between icon and text
                      Text(
                        'Events For You',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 94, 94, 94),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 82), // Space between the two sections
                  // Info Icon
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EventsPage()),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.green),
                        ),
                        IconButton(
                          icon: Icon(
                            size: 15,
                            Icons.double_arrow_rounded,
                            color: Colors.green,
                          ),
                          onPressed: () {
                            // Action for info icon
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              child: Row(
                children: [
                  Material(
                    elevation: 4, // Set the elevation to add shadow
                    borderRadius:
                        BorderRadius.circular(8), // Match the border radius
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          8), // Set the radius for rounded corners
                      child: Image.asset(
                        'assets/images/image16.jpg', // Replace with your image path
                        width: 361, // Set the width of the image to 361
                        height: 151, // Set the height of the image to 151
                        fit: BoxFit.cover, // Adjust image fitting
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Add space between images
                  Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/image19.jpg', // Replace with your image path
                        width: 361,
                        height: 151,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/image16.jpg', // Replace with your image path
                        width: 361,
                        height: 151,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/image20.jpg', // Replace with your image path
                        width: 361,
                        height: 151,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/MerchBag.png'),
                      SizedBox(width: 8), // Space between icon and text
                      Text(
                        'Merch For You',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 94, 94, 94),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 82), // Space between the two sections
                  // Info Icon
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DonationPage()),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.green),
                        ),
                        IconButton(
                          icon: Icon(
                            size: 15,
                            Icons.double_arrow_rounded,
                            color: Colors.green,
                          ),
                          onPressed: () {
                            // Action for info icon
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                child: Row(
                  children: [
                    MerchCard(
                        imageName: 'assets/images/tote.png', name: "Tote Bag"),
                    MerchCard(
                        imageName: 'assets/images/rcycl.png',
                        name: "Rcycl Bottle"),
                    MerchCard(
                        imageName: 'assets/images/stainless.png',
                        name: 'Stainless Steel'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Icon -> Text
                  Row(
                    children: [
                      Image.asset('assets/images/Article.png'),
                      SizedBox(width: 8), // Space between icon and text
                      Text(
                        'Merch For You',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 94, 94, 94),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 82), // Space between the two sections
                  // Info Icon
                  Row(
                    children: [
                      Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.green),
                      ),
                      IconButton(
                        icon: Icon(
                          size: 15,
                          Icons.double_arrow_rounded,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          // Action for info icon
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: GridView.builder(
                  shrinkWrap:
                      true, // Ensures the grid takes only the space it needs
                  physics:
                      NeverScrollableScrollPhysics(), // Prevent nested scrolling issues
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 10, // Horizontal space between items
                    mainAxisSpacing: 10, // Vertical space between items
                    childAspectRatio: 0.8, // Keeps a taller aspect ratio
                  ),
                  itemCount: 5, // Number of items in the grid
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArticlePage()),
                        );
                      },
                      child: SizedBox(
                        width: 170,
                        height: 220,
                        child: Card(
                          color: const Color.fromARGB(0, 68, 137, 255),
                          elevation: 0, // Remove shadow (borders effect)
                          shape: null, // No border shape
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    16), // Adjust the radius as needed
                                child: Image.asset(
                                  items[index]['image'] ?? '',
                                  width: 170,
                                  height: 150,
                                  fit: BoxFit
                                      .cover, // Crop or scale the image to fit
                                ),
                              ),
                              Center(
                                child: Text(
                                  items[index]['name'] ?? '',
                                  style: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 82, 82, 82),
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MerchCard extends StatelessWidget {
  final String imageName;
  final String name;

  const MerchCard({
    super.key,
    required this.imageName,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      elevation: 4, // Card shadow effect
      child: Padding(
        padding: EdgeInsets.all(15), // Padding inside the card
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the left
          children: [
            // Image
            Image.asset(
              imageName, // Replace with your image path
              width: 120, // Makes the image full width
              height: 120, // Set a fixed height for the image
              fit: BoxFit.cover, // Crop or scale the image to fit
            ),
            SizedBox(height: 10), // Space between image and text
            // Item Name
            Text(
              name, // Replace with your item name
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: const Color.fromARGB(255, 64, 64, 64),
              ),
            ),
            SizedBox(height: 5), // Space between name and price
            // Item Price
            Text(
              '500.00 EGP', // Replace with your item price
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(
                    255, 64, 64, 64), // Green color for price
              ),
            ),
          ],
        ),
      ),
    );
  }
}
