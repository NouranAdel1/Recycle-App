import 'package:flutter/material.dart';

class TrashInfo extends StatefulWidget {
  const TrashInfo({super.key});

  @override
  _TrashInfoState createState() => _TrashInfoState();
}

class _TrashInfoState extends State<TrashInfo> {
  int quantity = 1; // Initial value for the quantity
  double pricePerKg = 10.0; // Price per kg
  double totalPrice = 0.0;

  @override
  void initState() {
    super.initState();
    totalPrice = pricePerKg * quantity; // Calculate total price on initial load
  }

  void updateTotalPrice(int quantity) {
    setState(() {
      this.quantity = quantity;
      totalPrice = pricePerKg * quantity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trash Info'),
        backgroundColor: Color.fromRGBO(64, 168, 88, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Image and details
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image on the left
                Container(
                  width: 170,
                  height: 177,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image:
                          NetworkImage('https://via.placeholder.com/170x177'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                // Column with details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trash Type',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Cardboard'
                            .toUpperCase(), // Added trash type description here
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 23),
                      Text(
                        'Normal Price/kg',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$10.00',
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(height: 23),
                      Text(
                        'Estimated Weight/kg',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Minus Button
                          ClipPath(
                            clipper: ConcaveRightClipper(),
                            child: Container(
                              height: 28,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(9),
                                  topLeft: Radius.circular(9),
                                ),
                              ),
                              child: Center(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.green,
                                  ),
                                  onPressed: () {
                                    if (quantity > 1) {
                                      updateTotalPrice(quantity - 1);
                                    }
                                  },
                                  padding: EdgeInsets
                                      .zero, // Removes any default padding around the icon
                                ),
                              ),
                            ),
                          ),

                          // Quantity Display (Centered)
                          Container(
                            height: 28,
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 133, 132, 132)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Center(
                              child: Text(
                                '$quantity',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),

                          // Plus Button
                          ClipPath(
                            clipper: ConcaveLeftClipper(),
                            child: Container(
                              height: 28,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(9),
                                  topRight: Radius.circular(9),
                                ),
                              ),
                              child: Center(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.green,
                                  ),
                                  onPressed: () {
                                    updateTotalPrice(quantity + 1);
                                  },
                                  padding: EdgeInsets
                                      .zero, // Removes any default padding around the icon
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Total estimated price card (with max. number)
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Total Estimated Price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Estimated Price:',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    // Max. (Number) label
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Max.',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '\$${totalPrice.toStringAsFixed(2)}',
                          style: TextStyle(fontSize: 14, color: Colors.green),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            // Wide button at the bottom
            ElevatedButton(
              onPressed: () {
                // Handle button press
                print('Proceed to next step');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Color.fromRGBO(64, 168, 88, 1),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Change to a smaller value for more squareness
                ),
              ),
              child: Text(
                'Proceed',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConcaveRightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 1, 0); // Keep 10px of the right side.
    path.lineTo(size.width,
        size.height + 50); // Create a straight line on the right side.
    path.lineTo(0, size.height + 10); // Bottom left corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // No need to reclip as it does not change.
  }
}

class ConcaveLeftClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Start at the top-left corner
    path.lineTo(0, 0);

    // Create a concave curve on the left side
    path.quadraticBezierTo(
        10, size.height / 2, 0, size.height); // Concave curve

    // Move to the top-right corner
    path.lineTo(size.width, size.height);

    // Move to the top-right corner to close the shape
    path.lineTo(size.width, 0);

    path.close(); // Close the path to complete the shape

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
