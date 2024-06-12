// import 'package:flutter/material.dart';
//
// class shipping extends StatefulWidget {
//   const shipping({super.key});
//
//   @override
//   State<shipping> createState() => _shippingState();
// }
//
// class _shippingState extends State<shipping> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
import 'package:flutter/material.dart';
import '../PaymentPage/PaymentPage.dart';
// import 'package:loginpage/payment.dart';

// void main() {
//   runApp(MYApp());
// }
//
// class MYApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shipping Information Form',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ShippingForm(),
//     );
//   }
// }

class ShippingForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String name = "";

  String phoneNumber = "";

  String email = "";

  String gst ="";

  String address="";

  String location="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shipping Information Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Please enter your name';
                //   }
                //   return null;
                // },
                // onSaved: (value) => name = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Please enter your phone number';
                //   }
                //   return null;
                // },
                // onSaved: (value) => phoneNumber = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Please enter your email';
                //   }
                //   return null;
                // },
                // onSaved: (value) => email = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'GST Number'),
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Please enter your GST number';
                //   }
                //   return null;
                // },
                // onSaved: (value) => gst = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address'),
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Please enter your address';
                //   }
                //   return null;
                // },
                onSaved: (value) => address = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Location'),
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Please enter your location';
                //   }
                //   return null;
                // },
                onSaved: (value) => location = value!,
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {
                // _submitForm();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PaymentPage();
                },));
              }, child: Text("Payment"))
            ],
          ),
        ),
      ),
    );
  }
}