import 'dart:convert';
import 'package:automativemechatronics/screens/auth_ui/home/home.dart';
import 'package:automativemechatronics/screens/custom_bottom_bar/custom_bottom_bar.dart';
import 'package:automativemechatronics/widgets/primary_button/primary_button.dart';
import 'package:automativemechatronics/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../constants/routes.dart';
import '../Login/login.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Registration Form",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: kToolbarHeight + 0,
              // ),
              // GestureDetector(
              //     onTap: () {
              //       Navigator.of(context).pop();
              //     },
              //     child: const Icon(
              //       Icons.arrow_back,
              //       size: 26,
              //     ),
              // ),
              // const TopTitles(
              //     title: "Registration Form", subtitle: "Welcome to the Registration Page"
              // ),
              SizedBox(
                height: 46.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "UserName",
                  prefixIcon: Icon(
                    Icons.drive_file_rename_outline,
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "E-mail",
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Phone Number",
                  prefixIcon: Icon(
                    Icons.phone,
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "GST Number",
                  prefixIcon: Icon(
                    Icons.numbers,
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Address",
                  prefixIcon: Icon(
                    Icons.location_city,
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormField(
                obscureText: isShowPassword,
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.password,
                    ),
                    suffixIcon: CupertinoButton(
                        onPressed: () {
                          setState(() {
                            isShowPassword = !isShowPassword;
                            // print(isShowPassword);
                          });
                        },
                        padding: EdgeInsets.zero,
                        child: const Icon(Icons.visibility))),
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormField(
                obscureText: isShowPassword,
                decoration: InputDecoration(
                    hintText: "Confirm Password",
                    prefixIcon: Icon(
                      Icons.password,
                    ),
                    suffixIcon: CupertinoButton(
                        onPressed: () {
                          setState(() {
                            isShowPassword = !isShowPassword;
                            // print(isShowPassword);
                          });
                        },
                        padding: EdgeInsets.zero,
                        child: const Icon(Icons.visibility))),
              ),
              SizedBox(
                height: 35.0,
              ),
              PrimaryButton(
                  onPressed: () {
                    Routes.instance.pushAndRemoveUntil(
                        widget: const Home(), context: context);
                  },
                  title: "Submit"),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Routes.instance
                        .push(widget: const Login(), context: context);
                  },
                  child: Text(
                    "Already have Account?  Login",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future getData() async{
  var url = 'http://localhost/phpbackend/get1.php';
  http.Response response = await http.get(Uri.parse(url));
  var data = jsonDecode(response.body);
  print(data.toString());
}
@override
void initState() {
  getData();
}