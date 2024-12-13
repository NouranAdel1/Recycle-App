import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NotificationPage(),
  ));
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4CAF50),
        title: Text(
          'Notification',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
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
              NotificationBar(
                title: 'Chat',
                image: 'assets/images/image22.jpg',
                user: 'Captain',
                message: 'You: ok',
                time: '6 min ago',
                notificationCount: 2,
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.1), blurRadius: 6)
                  ],
                ),
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Voucher',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    InnerNotificationBar(
                      image: 'assets/images/image23.jpg',
                      user: 'Gojek',
                      message:
                          'Hi! We have good news for you. You get a special voucher from Gojek!',
                      time: 'July 6',
                      notificationCount: 1,
                      date: 'July 6',
                      addRedCircle: true,
                      addImage26: true,
                    ),
                    SizedBox(height: 8),
                    Divider(color: Colors.grey.withOpacity(0.2)),
                    SizedBox(height: 8),
                    InnerNotificationBar(
                      image: 'assets/images/image24.jpg',
                      user: 'Recycle',
                      message:
                          'You can get a 10% voucher for a minimum purchase of 100 EGP.',
                      time: '',
                      notificationCount: 0,
                      date: 'July 6',
                      addRedCircle: true,
                      addImage26: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              SizedBox(height: 16),
              NotificationBar(
                title: 'Events',
                image: 'assets/images/image25.jpg',
                user: 'Waste4Change',
                message:
                    'Don’t forget, the event you’ve been waiting for starts tomorrow.',
                time: '',
                notificationCount: 1,
                addNowText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationBar extends StatelessWidget {
  final String title;
  final String image;
  final String user;
  final String message;
  final String time;
  final int notificationCount;
  final bool addNowText;

  const NotificationBar({super.key, 
    required this.title,
    required this.image,
    required this.user,
    required this.message,
    required this.time,
    required this.notificationCount,
    this.addNowText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 6)
        ],
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 4)
              ],
            ),
            child: Row(
              children: [
                Image.asset(
                  image,
                  width: 40,
                  height: 40,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 4),
                      Text(
                        message,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  children: [
                    if (time.isNotEmpty)
                      Text(
                        time,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    if (addNowText) ...[
                      SizedBox(height: 4),
                      Text(
                        'Now',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                    if (notificationCount > 0) ...[
                      SizedBox(height: 4),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                        child: Text(
                          notificationCount.toString(),
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}

class InnerNotificationBar extends StatelessWidget {
  final String image;
  final String user;
  final String message;
  final String time;
  final int notificationCount;
  final String? date;
  final bool addRedCircle;
  final bool addImage26;

  const InnerNotificationBar({super.key, 
    required this.image,
    required this.user,
    required this.message,
    required this.time,
    required this.notificationCount,
    this.date,
    this.addRedCircle = false,
    this.addImage26 = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 4)
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 40,
            height: 40,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      user,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    if (addImage26) ...[
                      SizedBox(width: 8),
                      Image.asset(
                        'assets/images/image26.png',
                        width: 20,
                        height: 20,
                      ),
                    ]
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  message,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(width: 12),
          Column(
            children: [
              if (date != null) ...[
                SizedBox(height: 4),
                Text(
                  date!,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
              if (addRedCircle) ...[
                SizedBox(height: 4),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.red,
                  child: Text(
                    '1',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
