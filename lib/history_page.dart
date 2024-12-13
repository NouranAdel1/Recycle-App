import 'package:flutter/material.dart';

class HistoryActivityPage extends StatefulWidget {
  const HistoryActivityPage({super.key});

  @override
  _HistoryActivityPageState createState() => _HistoryActivityPageState();
}

class _HistoryActivityPageState extends State<HistoryActivityPage> {
  // Dummy data for All transactions and Trash Selling transactions
  final List<Map<String, String>> allTransactions = [
    {
      'icon': 'Icons.add_shopping_cart',
      'header': 'Purchase Made',
      'description': 'Purchased 3 bags of trash bags',
      'date': '2024-12-05'
    },
    {
      'icon': 'Icons.local_shipping',
      'header': 'Shipping Update',
      'description': 'Trash shipped to the warehouse',
      'date': '2024-12-04'
    },
  ];

  final List<Map<String, String>> trashSellingTransactions = [
    {
      'icon': 'Icons.sell',
      'header': 'Sold Trash',
      'description': 'Sold 20kg of recycled plastic',
      'date': '2024-12-01'
    },
    {
      'icon': 'Icons.store',
      'header': 'Trash Collection',
      'description': 'Collected trash for recycling',
      'date': '2024-11-30'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('History Activity'),
          backgroundColor: Colors.green,
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Trash Selling'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // "All" transactions tab
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: allTransactions.length,
                itemBuilder: (context, index) {
                  return TransactionCard(
                    icon: Icons.add_shopping_cart,
                    header: allTransactions[index]['header']!,
                    description: allTransactions[index]['description']!,
                    date: allTransactions[index]['date']!,
                  );
                },
              ),
            ),
            // "Trash Selling" transactions tab
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: trashSellingTransactions.length,
                itemBuilder: (context, index) {
                  return TransactionCard(
                    icon: Icons.sell,
                    header: trashSellingTransactions[index]['header']!,
                    description: trashSellingTransactions[index]
                        ['description']!,
                    date: trashSellingTransactions[index]['date']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  final IconData icon;
  final String header;
  final String description;
  final String date;

  const TransactionCard({
    required this.icon,
    required this.header,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.green, size: 40),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  header,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 8),
                Text(
                  date,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
