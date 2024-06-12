import 'package:automativemechatronics/models/product_model/product_model.dart';
import 'package:automativemechatronics/provider/app_provider.dart';
import 'package:automativemechatronics/screens/buy_product/buy_product.dart';
import 'package:automativemechatronics/screens/cart_screen/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/routes.dart';
import '../../models/service_model/service_model.dart';

class AboutUs extends StatefulWidget {
  // final ServiceModel singleService;
  const AboutUs({super.key});
  // const AboutUs({super.key, required this.singleService});

  @override
  State<AboutUs> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<AboutUs> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "About Us",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "https://img.freepik.com/premium-vector/fast-delivery-icon-express-delivery-urgent-delivery-services-stopwatch-sign_349999-859.jpg",
                height: 100,
                width: 150,
              ),
              SizedBox(height: 20),
              Text(
                "FAST DELIVERY",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Image.network(
                "https://www.pngitem.com/pimgs/m/170-1701988_transparent-delivery-png-free-shipping-logo-png-png.png",
                height: 100,
                width: 150,
              ),
              SizedBox(height: 20),
              Text(
                "FREE DELIVERY",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Image.network(
                "https://static.vecteezy.com/system/resources/thumbnails/014/435/712/small/best-quality-stamp-best-quality-black-seal-100-percent-best-quality-product-stamp-of-best-quality-logo-vector.jpg",
                height: 100,
                width: 150,
              ),
              SizedBox(height: 20),
              Text(
                "BEST QUALITY",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Image.network(
                "https://static.thenounproject.com/png/2340116-200.png",
                height: 100,
                width: 150,
              ),
              SizedBox(height: 20),
              Text(
                "REFUND",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
