import 'package:automativemechatronics/screens/Product_details/product_details.dart';
import 'package:automativemechatronics/screens/about_us/about_us.dart';
import 'package:automativemechatronics/screens/auth_ui/welcome/welcome.dart';
import 'package:automativemechatronics/screens/buy_product/buy_product.dart';
import 'package:automativemechatronics/screens/cart_screen/cart_screen.dart';
import 'package:automativemechatronics/widgets/top_titles/top_titles.dart';
import 'package:flutter/material.dart';

import '../../../constants/asset_images.dart';
import '../../../constants/routes.dart';
import '../../../models/product_model/product_model.dart';
import '../../../models/service_model/service_model.dart';
import '../../Product_details/products.dart';
import '../../contact_us/contact_us.dart';
import '../../order_screen/order_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Home Page",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      // drawer: Drawer(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // UserAccountsDrawerHeader(
            //     currentAccountPicture: CircleAvatar(
            //       child: Text("U",style: TextStyle(fontSize: 30.0),),
            //     ),
            //     accountName: Text("Umang R Patel"),
            //     accountEmail: Text("Umang123@gmail.com")),
            UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: Text("S",style: TextStyle(fontSize: 30.0),),
            ),
            accountName: Text("Sahil Prajapati"),
            accountEmail: Text("sahil123@gmail.com")),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Products'),
              leading: Icon(Icons.list_alt),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Products();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Cart'),
              leading: Icon(Icons.production_quantity_limits),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CartScreen();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('My_Order'),
              leading: Icon(Icons.offline_bolt_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BillFactory();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Contact Us'),
              leading: Icon(Icons.contact_mail),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ContactUsPage();
                    },
                  ),
                );
              },
            ),
            ListTile(
              title: Text('About Us'),
              leading: Icon(Icons.add_business_outlined),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutUs();
                    },
                  ),
                );
              },
            ),
            // Add more ListTile widgets for additional items
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              // child: TopTitles(title: "Home Page", subtitle: ""),
            ),
            Center(
              child: Image.asset(AssetsImages.instance.homepageimages),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              "WE PROVIDED",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: bestProduct.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.9,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (ctx, index) {
                    ProductModel singleProduct = bestProduct[index];
                    return SingleChildScrollView(
                      child: Container(
                        color: Colors.grey.withOpacity(0.9),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15.0,
                            ),
                            Image.network(
                              singleProduct.image,
                              height: 70,
                              width: 70,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              singleProduct.name,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("Price : \$${singleProduct.price}"),
                            SizedBox(
                              height: 12.0,
                              width: 8,
                            ),
                            SizedBox(
                              height: 45,
                              width: 130,
                              child: OutlinedButton(
                                onPressed: () {
                                  Routes.instance.push(
                                      widget: Products(),
                                      context: context);
                                },
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.red,
                                    width: 1.9,
                                  ),
                                ),
                                child: Text(
                                  "Visit",
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              "OUR SERVICE",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: 4,
                  // itemCount: bestProduct.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.9,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (ctx, index) {
                    ServiceModel singleService = bestService[index];
                    return Container(
                      color: Colors.grey.withOpacity(0.9),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15.0,
                          ),
                          Image.network(
                            singleService.image,
                            height: 80,
                            width: 80,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            singleService.name,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 45,
                            width: 130,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return AboutUs();
                                },),);
                                // Routes.instance.push(
                                //     widget: AboutUs(
                                //         singleService: singleService),
                                //     context: context);
                              },
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  color: Colors.red,
                                  width: 1.9,
                                ),
                              ),
                              child: Text(
                                "SERVICE",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}

List<ServiceModel> bestService = [
  ServiceModel(
    image:
    "https://img.freepik.com/premium-vector/fast-delivery-icon-express-delivery-urgent-delivery-services-stopwatch-sign_349999-859.jpg",
    name: "FAST DELIVERY",
  ),
  ServiceModel(
    image:
    "https://www.pngitem.com/pimgs/m/170-1701988_transparent-delivery-png-free-shipping-logo-png-png.png",
    name: "FREE DELIVERY",
  ),
  ServiceModel(
    image:
    "https://static.vecteezy.com/system/resources/thumbnails/014/435/712/small/best-quality-stamp-best-quality-black-seal-100-percent-best-quality-product-stamp-of-best-quality-logo-vector.jpg",
    name: "BEST QUALITY",
  ),
  ServiceModel(
    image: "https://static.thenounproject.com/png/2340116-200.png",
    name: "REFUND",
  ),

];


List<ProductModel> bestProduct = [
  ProductModel(
    image: "https://i.ebayimg.com/images/g/tiEAAOSwXfJf5aE4/s-l1200.webp",
    id: "1",
    name: "16er Ag60",
    price: "150₹",
    description:
    "This Tools 16er Ag60 using pang For Insert Identification System, click on More Info For threaing between walls use GRIP-type inserts SCIR/L B/F -MTR/L, TIP-MT, GEPI-MT, TIPI-MT DIN13 , ISO 68-1, ISO 965 (1&2) - External tolerance: 6g ANSI/ASME B1.1 - External tolerance: 2A",
    status: "pending",
    isFavourite: false,
  ),
  ProductModel(
    image: "https://www.ukocarbide.com/wp-content/uploads/2023/06/CNMG-1.webp",
    id: "2",
    name: "CNMG",
    price: "250₹",
    description:
    "This Tools cnmg using CNC manufacturing for machining metal inserts that may be used in the cutting of a variety of materials, including wood, metal, and others. Drilling, milling, and turning are just some of the CNC techniques that this material is compatible with. Both the CNMG 190612 insert and the CNC tool lathe make use of this component.",
    status: "pending",
    isFavourite: false,
  ),
  ProductModel(
    image:
    "https://huanatools.com/wp-content/uploads/2022/06/DCMT-Inserts.jpg.webp",
    id: "3",
    name: "DCMT11",
    price: "350₹",
    description:
    "This Tools DCMT11 CNC is commonly used in manufacturing for machining metal and plastic parts  the dccr carbide insert has a wide, high-speed disc brake that allows you to turn smoothly and easily mall size this is a small size, which is very convenient for you to carry and store. it can be easily stored in your pocket or backpack when not in use.",
    status: "pending",
    isFavourite: false,
  ),
  ProductModel(
    image:
    "https://5.imimg.com/data5/SELLER/Default/2023/12/369966911/UJ/LY/VF/13480826/cnmg-120408-carbide-inserts-500x500.webp",
    id: "4",
    name: "MASTARS",
    price: "250₹",
    description:
    "This Tools MASTARS using automated with CNC.ool is an object that can extend an individual's ability to modify features of the surrounding environment or help them accomplish a particular task. Although many animals use simple tools, only human beings.",
    status: "pending",
    isFavourite: false,
  ),
  // ProductModel(
  //     image:
  //     "https://image.made-in-china.com/202f0j00mFIlJbYElyog/16er-AG60-Original-Threading-Inserts-Cutting-Tools.webp",
  //     id: "5",
  //     name: "16EI AG60",
  //     price: "550₹",
  //     description:
  //     "This Tools 16Ei AG60 using automated with CNC and are best tool in all tools using more. Standard Mts 10PC/Box 16er-AG60 Carbide Inserts Indexable Threading Inserts Cutting Inserts CNC Lathe Cutter Cutting Tool sAfter you pay the sample charge and send us confirmed files, the samples will be ready for delivery in 3-7 days.",
  //     status: "pending",
  //     isFavourite: false),
  // ProductModel(
  //     image:
  //     "https://www.picclickimg.com/59QAAOSwXmJkjWFw/10-X-Sandvik-Dcmt-11-T3-12-PR-4235.webp",
  //     id: "6",
  //     name: "DCMT18",
  //     price: "1050₹",
  //     description:
  //     "This Tools DCMT18 using automated with CNC and that are maniy using CNC & VMC Machines. After price confirmation, you can require for samples to check our quality. If you just need a blank sample to check the design and paper quality, we will provide you sample for free, as long as you afford the express freight.",
  //     status: "pending",
  //     isFavourite: false),
  // ProductModel(
  //     image:
  //     "https://www.zcccuttingtools.com/uploads/201919911/dcmt-insert29542408331.jpg",
  //     id: "7",
  //     name: "ZCC_CT",
  //     price: "1500₹",
  //     description:
  //     "This Tools ZCC-CT using automated with CNC and that are maniy using CNC & VMC Machines. After price confirmation, you can require for samples to check our quality. If you just need a blank sample to check the design and paper quality, we will provide you sample for free, as long as you afford the express freight.",
  //     status: "pending",
  //     isFavourite: false),
  // ProductModel(
  //     image:
  //     "https://5.imimg.com/data5/SELLER/Default/2023/2/AZ/YQ/CL/10319855/pcd-insert-500x500.jpg",
  //     id: "8",
  //     name: "PCD DCMT11",
  //     price: "2050₹",
  //     description:
  //     "This Tools PCD DCMT11 using automated with CNC and that are maniy using CNC & VMC Machines. After price confirmation, you can require for samples to check our quality. If you just need a blank sample to check the design and paper quality, we will provide you sample for free, as long as you afford the express freight.",
  //     status: "pending",
  //     isFavourite: false),
];

