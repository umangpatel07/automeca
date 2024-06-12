import 'package:automativemechatronics/models/product_model/product_model.dart';
import 'package:automativemechatronics/provider/app_provider.dart';
import 'package:automativemechatronics/screens/Product_details/product_details.dart';
import 'package:automativemechatronics/screens/buy_product/buy_product.dart';
import 'package:automativemechatronics/screens/cart_screen/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/routes.dart';
import '../../models/service_model/service_model.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<Products> {


  List<ProductModel> products = [
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
    ProductModel(
        image:
        "https://image.made-in-china.com/202f0j00mFIlJbYElyog/16er-AG60-Original-Threading-Inserts-Cutting-Tools.webp",
        id: "5",
        name: "16EI AG60",
        price: "550₹",
        description:
        "This Tools 16Ei AG60 using automated with CNC and are best tool in all tools using more. Standard Mts 10PC/Box 16er-AG60 Carbide Inserts Indexable Threading Inserts Cutting Inserts CNC Lathe Cutter Cutting Tool sAfter you pay the sample charge and send us confirmed files, the samples will be ready for delivery in 3-7 days.",
        status: "pending",
        isFavourite: false),
    ProductModel(
        image:
        "https://www.picclickimg.com/59QAAOSwXmJkjWFw/10-X-Sandvik-Dcmt-11-T3-12-PR-4235.webp",
        id: "6",
        name: "DCMT18",
        price: "1050₹",
        description:
        "This Tools DCMT18 using automated with CNC and that are maniy using CNC & VMC Machines. After price confirmation, you can require for samples to check our quality. If you just need a blank sample to check the design and paper quality, we will provide you sample for free, as long as you afford the express freight.",
        status: "pending",
        isFavourite: false),
    ProductModel(
        image:
        "https://www.zcccuttingtools.com/uploads/201919911/dcmt-insert29542408331.jpg",
        id: "7",
        name: "ZCC_CT",
        price: "1500₹",
        description:
        "This Tools ZCC-CT using automated with CNC and that are maniy using CNC & VMC Machines. After price confirmation, you can require for samples to check our quality. If you just need a blank sample to check the design and paper quality, we will provide you sample for free, as long as you afford the express freight.",
        status: "pending",
        isFavourite: false),
    ProductModel(
        image:
        "https://5.imimg.com/data5/SELLER/Default/2023/2/AZ/YQ/CL/10319855/pcd-insert-500x500.jpg",
        id: "8",
        name: "PCD DCMT11",
        price: "2050₹",
        description:
        "This Tools PCD DCMT11 using automated with CNC and that are maniy using CNC & VMC Machines. After price confirmation, you can require for samples to check our quality. If you just need a blank sample to check the design and paper quality, we will provide you sample for free, as long as you afford the express freight.",
        status: "pending",
        isFavourite: false),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Products",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetails(singleProduct: product),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 100,
                    width: 70,
                    child: ListTile(
                      leading: Image.network(
                        product.image,
                        height: 250,
                        width: 100,
                        // fit: BoxFit.cover,
                      ),
                      // SizedBox(
                      //   height: 10.0,
                      // ),
                      title:Text(
                        product.name,
                        style: TextStyle(
                            fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                      product.price,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
