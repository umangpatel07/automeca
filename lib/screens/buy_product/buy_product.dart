import 'package:automativemechatronics/screens/PaymentPage/PaymentPage.dart';
import 'package:automativemechatronics/screens/ShippingForm/ShippingForm.dart';
import 'package:automativemechatronics/widgets/primary_button/primary_button.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Checkout",
          style: TextStyle(
              color: Colors.black
          ),
        ),
      ),
      // body: Column(
      //   children: [
      //     PrimaryButton(onPressed: () {
      //           Navigator.push(context, MaterialPageRoute(builder: (context) {
      //             return ShippingForm();
      //           },));
      //     }, title: "Checkout")
      //   ],
      // ),
    );
  }
}
