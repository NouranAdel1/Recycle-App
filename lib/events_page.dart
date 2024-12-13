import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: EventsPage(),
  ));
}

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4CAF50), // App bar color

        title: Row(
          children: [
            Image.asset(
              'assets/images/image17.jpg',
              width: 30,
              height: 30,
            ),
            SizedBox(width: 8),
            Text(
              'Events',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Container for the vertical bar
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Trending Events Title
                    Row(
                      children: [
                        Image.asset('assets/images/image18.jpg',
                            width: 30, height: 30),
                        SizedBox(width: 8),
                        Text(
                          'Trending Events',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),

                    // Event 1
                    EventCard(
                      image: 'assets/images/image16.jpg',
                      date: '30 November 2024',
                      title: 'Exhibition of Recycled products.',
                      description: 'waste for change   🞄   300 People Attends',
                    ),

                    Divider(color: Colors.grey.shade300),

                    // Event 2
                    EventCard(
                      image: 'assets/images/image19.jpg',
                      date: '10 December 2024',
                      title: 'Education : Let\'s Recycle, it\'s Your Future.',
                      description: 'JagaBerSama.id   🞄   96 People Attends',
                    ),

                    Divider(color: Colors.grey.shade300),

                    // Event 3
                    EventCard(
                      image: 'assets/images/image20.jpg',
                      date: '25 November 2024',
                      title: 'Zero Waste',
                      description: 'LindungHutan   🞄   165 People Attends',
                    ),

                    Divider(color: Colors.grey.shade300),

                    // Event 4
                    EventCard(
                      image: 'assets/images/image21.jpg',
                      date: '3 December 2024',
                      title: 'Recycling Day Festival',
                      description: 'Green Peace   🞄   60 People Attends',
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

class EventCard extends StatelessWidget {
  final String image;
  final String date;
  final String title;
  final String description;

  const EventCard({super.key, 
    required this.image,
    required this.date,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 8),
        Text(
          date,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 4),
        Text(
          description,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
