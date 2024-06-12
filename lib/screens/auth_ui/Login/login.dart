// import 'dart:js_interop';
import 'dart:convert';
import 'package:automativemechatronics/widgets/primary_button/primary_button.dart';
import 'package:automativemechatronics/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../constants/routes.dart';
import '../Sign_up/Sign_up.dart';
import '../home/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
                  "Login",
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
              // const TopTitles(
              //     title: "Login", subtitle: "Welcome to the Sing Up Page"),
              SizedBox(
                height: 46.0,
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
                height: 35.0,
              ),
              PrimaryButton(onPressed: () {
                  Routes.instance.pushAndRemoveUntil(
                      widget: const Home(), context: context);
              }, title: "Login"),
              SizedBox(
                height: 20.0,
              ),
              Center(child: Text("Forgot Password ?")),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: CupertinoButton(
                  onPressed: () {
                    Routes.instance
                        .push(widget: const SingUp(), context: context);
                  },
                  child: Text(
                    "Need an Account?  Register",
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

