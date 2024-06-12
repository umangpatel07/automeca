// import 'package:flutter/material.dart';
//
// class OrderScreen extends StatelessWidget {
//   const OrderScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         title: const Text(
//           "Order Details",
//           style: TextStyle(
//             color: Colors.black
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:automativemechatronics/screens/auth_ui/home/home.dart';
import 'package:flutter/material.dart';

class BillFactory extends StatefulWidget {
  @override
  _BillFactoryState createState() => _BillFactoryState();
}

class _BillFactoryState extends State<BillFactory> {
  List<BillItem> _billItems = [];

  void _addItem(String productName, String quality, int quantity, double price) {
    setState(() {
      _billItems.add(BillItem(
        productName: productName,
        quality: quality,
        quantity: quantity,
        price: price,
      ));
    });
  }

  double _calculateTotal() {
    double total = 0;
    for (var item in _billItems) {
      total += item.quantity * item.price;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bill Factory'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bill Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Product Name')),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Quality')),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Quantity')),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Price')),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Total')),
                      ),
                    ),
                  ],
                ),
                for (var item in _billItems)
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(item.productName),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(item.quality),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${item.quantity}'),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('\$${item.price.toStringAsFixed(2)}'),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('\$${(item.quantity * item.price).toStringAsFixed(2)}'),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Total: \$${_calculateTotal().toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _addItem('Product A', 'High', 2, 15.0);
                _addItem('Product B', 'Medium', 1, 10.0);
              },
              child: Text('Show Bill information'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home();
                },));
              },
              child: Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}

class BillItem {
  final String productName;
  final String quality;
  final int quantity;
  final double price;

  BillItem({
    required this.productName,
    required this.quality,
    required this.quantity,
    required this.price,
  });
}