import 'package:automativemechatronics/models/product_model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/app_provider.dart';

class SingleCartItem extends StatefulWidget {
  final ProductModel singleProduct;

  const SingleCartItem({super.key, required this.singleProduct});

  @override
  State<SingleCartItem> createState() => _SingleCartItemState();
}

class _SingleCartItemState extends State<SingleCartItem> {
  int qty = 1;
  @override
  void initState() {
    qty=widget.singleProduct.qty??1;
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
        border: Border.all(color: Colors.red, width: 3),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 140,
              color: Colors.red.withOpacity(0.5),
              child: Image.network(
                widget.singleProduct.image,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 140,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.singleProduct.name,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            CupertinoButton(
                              onPressed: () {
                                if (qty >= 1) {
                                  setState(() {
                                    qty--;
                                  });
                                }
                              },
                              padding: EdgeInsets.zero,
                              child: CircleAvatar(
                                maxRadius: 13,
                                child: Icon(Icons.remove),
                              ),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              qty.toString(),
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            CupertinoButton(
                              onPressed: () {
                                setState(() {
                                  qty++;
                                });
                              },
                              padding: EdgeInsets.zero,
                              child: CircleAvatar(
                                maxRadius: 13,
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // CupertinoButton(
                            //   padding: EdgeInsets.zero,
                            //   onPressed: () {},
                            //   child: const Text(
                            //     "Add To Wishlist",
                            //     style: const TextStyle(
                            //       fontSize: 12.0,
                            //       fontWeight: FontWeight.bold,
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(width: 12.0,),
                            CupertinoButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  AppProvider appProvider = Provider.of<AppProvider>(context, listen: false);
                                  appProvider.removeCartProduct(widget.singleProduct);
                                  SnackBar(content: Text("Remove From Cart"),);
                                },
                                child: CircleAvatar(
                                  maxRadius: 13,
                                  child: Icon(Icons.delete_outline, size: 22,),
                                ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      widget.singleProduct.price.toString(),

                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // color: Colors.grey.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
