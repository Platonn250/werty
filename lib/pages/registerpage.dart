// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dateapp/pages/choose_a_t_page.dart';
import 'package:dateapp/pages/home.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({
    Key? key,
    required this.showLoginPage,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/bar.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        toolbarHeight: 100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 52,
                  width: 82,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(46, 80, 112, 1),
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Color.fromARGB(255, 255, 255, 255),
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ],
                    // color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset("lib/images/g.jpg"),
                ),
                Container(
                  height: 52,
                  width: 82,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(46, 80, 112, 1),
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Color.fromARGB(255, 255, 255, 255),
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ],
                    // color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset("lib/images/f.jpg"),
                ),
                Container(
                  height: 52,
                  width: 82,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 95, 126, 154),
                        offset: Offset(4.0, 4.0),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Color.fromARGB(255, 95, 126, 154),
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 10,
                        spreadRadius: 0.3,
                      ),
                    ],
                    // color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset("lib/images/a.jpg"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text("Or Sign Up with Email"),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(242, 237, 237, 1),
                ),
                height: 49,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.mail),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(242, 237, 237, 1),
                ),
                height: 49,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      prefixIcon: Icon(Icons.lock),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(242, 237, 237, 1),
                ),
                height: 49,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.mail),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(242, 237, 237, 1),
                ),
                height: 49,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Comfirm Pasword",
                      prefixIcon: Icon(Icons.mail),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeView();
                  }));
                }),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(46, 80, 112, 1),
                  ),
                  height: 49,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an Acount? "),
                  GestureDetector(
                    onTap: widget.showLoginPage,
                    child: Text(
                      " Login here",
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
