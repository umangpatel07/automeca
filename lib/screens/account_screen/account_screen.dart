import 'package:automativemechatronics/widgets/primary_button/primary_button.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
                  "Profile",
                  style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black
                  ),
                 ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.person_outline,
                      size: 150,
                    ),
                    Text(
                      "Umang Patel",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Umang0444@gmail.com",
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                        width: 160,
                        child: PrimaryButton(
                            onPressed: () {}, title: "Edit Profile")),
                    // ElevatedButton(onPressed: () {}, child: Icon(Icons.edit)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.shopping_bag_outlined),
                    title: Text("Your Order"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.add_shopping_cart),
                    title: Text("Your Added Cart"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.accessibility_new_outlined),
                    title: Text("About US"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.map),
                    title: Text("Contect US"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.logout_outlined),
                    title: Text("Log Out"),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text("Version 1.0")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
