import 'package:flutter/material.dart';
import 'package:myapp/splash_page.dart';
import 'package:myapp/success_added_trash.dart';

class ShipmentInfo extends StatelessWidget {
  const ShipmentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shipment Information',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: Color.fromRGBO(64, 168, 88, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // First Row: Image, ClearPET info, and Change Button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Image
                  Image.network(
                    'https://via.placeholder.com/90x90', // Replace with your image path
                    width: 90,
                    height: 90,
                  ),
                  // Column with ClearPET info
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ClearPET:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '10kg',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Estimated price/kg: 20',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '20.00 - 100.00',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  // Change Button at the top right corner
                  IconButton(
                    icon: Icon(Icons.edit, color: Colors.green),
                    onPressed: () {
                      // Handle change action
                    },
                  ),
                ],
              ),

              // Wide Add Trash Button
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Handle Add Trash action
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                  backgroundColor: Color.fromRGBO(64, 168, 88, 1),
                  textStyle: TextStyle(fontSize: 18),
                ),
                child: Text(
                  'Add Trash',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),

              // Divider
              Divider(color: Colors.grey, thickness: 1, height: 30),

              // Second Row: Add Photo Title with Add Image Button
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add Photo',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          // Handle Add Image action
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: Color.fromRGBO(64, 168, 88, 1),
                            fixedSize: Size(99, 90)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_rounded,
                              color: Colors.white,
                              size: 50,
                            ),
                            Text(
                              'Add Photo',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                              overflow: TextOverflow
                                  .ellipsis, // Ensure text does not overflow or wrap
                              maxLines: 1, // Constrain to a single line
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Divider
              Divider(color: Colors.grey, thickness: 1, height: 30),

              // Input Boxes
              Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Ensures all children are aligned left
                children: [
                  // Header for Pick Up Location
                  Text(
                    'Pick up Location',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8), // Space between header and text field
                  SizedBox(
                    height: 48, // Set the height of the TextField
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Pickup Location",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: const Color.fromARGB(99, 116, 116, 116),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 12), // Adjust padding for height
                        suffixIcon: Icon(
                          Icons.location_pin,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Header for Location Details
                  Text(
                    'Location Details',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8), // Space between header and text field
                  SizedBox(
                    height: 48, // Set the height of the TextField
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Location Details",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: const Color.fromARGB(99, 116, 116, 116),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 12), // Adjust padding for height
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Header for Phone Number
                  Text(
                    'Phone Number',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8), // Space between header and text field
                  SizedBox(
                    height: 48, // Set the height of the TextField
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: const Color.fromARGB(99, 116, 116, 116),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 12), // Adjust padding for height
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  SizedBox(height: 30),

                  // Confirm Button
                  ElevatedButton(
                    onPressed: () {
                      // Handle Confirm action
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SuccessAddedTrash()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Color.fromRGBO(64, 168, 88, 1),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                    child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
