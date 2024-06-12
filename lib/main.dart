import 'dart:convert';
import 'package:automativemechatronics/constants/theme.dart';
import 'package:automativemechatronics/provider/app_provider.dart';
import 'package:automativemechatronics/screens/auth_ui/Login/login.dart';
import 'package:automativemechatronics/screens/auth_ui/home/home.dart';
import 'package:automativemechatronics/screens/auth_ui/welcome/welcome.dart';
import 'package:automativemechatronics/screens/auth_ui/welcome/welcome.dart';
import 'package:automativemechatronics/screens/custom_bottom_bar/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Automative Mechatronics',
        theme: themeData,
        // home: welcome(),
        // home: Home(),
        home: StreamBuilder(builder:(context,snapshot){if(snapshot.hasData){
              return const Home();
              }
              return const welcome();
              // return const AdminPanel();
          }, stream: null,),
      ),
    );
  }
}
