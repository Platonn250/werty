// ignore_for_file: prefer_const_constructors

import 'package:dateapp/pages/businesstyppage.dart';
import 'package:dateapp/pages/categories.dart';
import 'package:dateapp/pages/choose_a_t_page.dart';
import 'package:dateapp/pages/home.dart';
import 'package:dateapp/pages/homepage.dart';
import 'package:dateapp/pages/loginpage.dart';
import 'package:dateapp/pages/registerpage.dart';
import 'package:dateapp/screens/chatscreen.dart';
import 'package:dateapp/screens/orderscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ChatScreen().id: (context) => ChatScreen(),
        OrderScreen().id: (context) => OrderScreen(),
        Loginpage(showRegisterPage: () {}).id: (context) =>
            Loginpage(showRegisterPage: () {}),
        RegisterPage(
          showLoginPage: () {},
        ).id: (context) => RegisterPage(showLoginPage: () {}),
        AccountType().id: (context) => AccountType(),
        CategoriesPage().id: (context) => CategoriesPage(),
        BusinessType().id: (context) => BusinessType(),
        HomeView().id: (context) => HomeView(),

        // '/': (context) => HomePage(),
      },
      home: HomePage(),
    );
  }
}
