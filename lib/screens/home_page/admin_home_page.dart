import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Dashboard",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Umang Patel",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                "Umang421@gmail.com",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                primary: false,
                padding: EdgeInsets.only(top: 12.0),
                itemCount: _dasboardItem.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  Map<String, dynamic> singleDash = _dasboardItem[index];
                  return Card(
                    child: Container(
                      color: Theme.of(context).primaryColor.withOpacity(0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            singleDash["title"],
                            style: TextStyle(
                                fontSize: 35.0, color: Colors.black87),
                          ),
                          Text(
                            singleDash["subtitle"],
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  static final List<Map<String, dynamic>> _dasboardItem = [
    {
      "title": "400",
      "subtitle": "Users",
    },
    {
      "title": "5",
      "subtitle": "Categories",
    },
    {
      "title": "8",
      "subtitle": "Products",
    },
    {
      "title": "\₹1000",
      "subtitle": "Earning",
    },
    {
      "title": "12",
      "subtitle": "Pending Order",
    },
    {
      "title": "5",
      "subtitle": "Completed Order",
    },
    {
      "title": "2",
      "subtitle": "Cancel Order",
    },
    {
      "title": "5",
      "subtitle": "Delivery Order",
    }
  ];
}
