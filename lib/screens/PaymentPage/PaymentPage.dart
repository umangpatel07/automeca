import 'package:automativemechatronics/screens/auth_ui/home/home.dart';
import 'package:automativemechatronics/screens/buy_product/buy_product.dart';
import 'package:automativemechatronics/screens/order_screen/order_screen.dart';
import 'package:flutter/material.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Payment"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 250, // Increased height to accommodate buttons
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Card Number',
                style: TextStyle(color: Colors.white),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter card number',
                  hintStyle: TextStyle(color: Colors.white),
                ),
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
              ),
              Text(
                'Expiration Date',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'MM/YY',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.datetime,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'CVV',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      obscureText: true,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // PrimaryButton(
                  //   onPressed: () {
                  //     // Handle Submit
                  //     // For example, navigate to the order screen
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => OrderScreen(),
                  //       ),
                  //     );
                  //   },
                  //   title: "Submit",
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return BillFactory();
                      },));
                      // Handle View
                      // For example, navigate to the buy product screen
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => BuyProduct(),
                      //   ),
                      // );
                    },
                    child: Text("submit"),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //       return BillFactory();
                  //     },));
                  //     // Handle View
                  //     // For example, navigate to the buy product screen
                  //     // Navigator.push(
                  //     //   context,
                  //     //   MaterialPageRoute(
                  //     //     builder: (context) => BuyProduct(),
                  //     //   ),
                  //     // );
                  //   },
                  //   child: Text("View"),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}