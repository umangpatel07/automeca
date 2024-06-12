import 'package:flutter/cupertino.dart';

import '../models/product_model/product_model.dart';

class AppProvider with ChangeNotifier{
  // CART WORKED THIS CODE
  final List<ProductModel> _cartProductList = [];

  void addCartProduct(ProductModel productModel) {
    _cartProductList.add(productModel);
    notifyListeners();
  }

    void removeCartProduct(ProductModel productModel){
      _cartProductList.remove(productModel);
      notifyListeners();
  }

    List<ProductModel> get getCartProductList => _cartProductList;

//   Total Price
double totalPrice(){
  double totalPrice = 0.0;
  for (var element in _cartProductList){
    totalPrice += (element.price * element.qty!) as double;
  }
  return totalPrice;
}
}