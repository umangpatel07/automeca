import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:automativemechatronics/constants/asset_images.dart';
import 'package:automativemechatronics/constants/routes.dart';
import 'package:automativemechatronics/screens/auth_ui/Login/login.dart';
import 'package:automativemechatronics/screens/custom_bottom_bar/custom_bottom_bar.dart';
import 'package:automativemechatronics/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../widgets/primary_button/primary_button.dart';
import '../../contact_us/contact_us.dart';
import '../Sign_up/Sign_up.dart';

class welcome extends StatefulWidget {

  const welcome({super.key});

  @override
  State<welcome> createState() => welcomeState();
}

class welcomeState extends State<welcome> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "Welcome",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0,),
              Text("Buy Any CNC Tools From Using App!!..",style: TextStyle(fontSize: 20.0),),
              // TopTitles(
              //     title: "Welcome", subtitle: "Buy any CNC Tools from using app"),
              SizedBox(height: 12.0,),
              // SizedBox(
              //   height: kToolbarHeight + 12,
              // ),
              // Text(
              //   "Welcome",
              //   style: TextStyle(
              //     fontSize: 26.0,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // SizedBox(
              //   height: 12,
              // ),
              // Text(
              //   "Buy any CNC Tools from using app",
              //   style: TextStyle(
              //     fontSize: 18.0,
              //     // fontWeight: FontWeight.bold,
              //   ),
              // ),
              Center(
                child: Image.asset(AssetsImages.instance.welcomeimages),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      child: Icon(Icons.facebook,
                          size: 45, color: Colors.blueAccent)),
                  SizedBox(
                    width: 16.0,
                  ),
                  CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: Image.asset(
                      AssetsImages.instance.googlelogo,
                      scale: 18.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              PrimaryButton(
                title: "Login",
                onPressed: () {
                  Routes.instance.push(widget: const Login(), context: context);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              PrimaryButton(
                title: "Sign Up",
                onPressed: () {
                  Routes.instance.push(widget: const SingUp(), context: context);
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
