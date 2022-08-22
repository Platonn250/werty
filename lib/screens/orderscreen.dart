// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.message,
              size: 42,
            ),
            Text(
              "Orders",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    height: 56,
                    width: 397,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 215, 215, 215),
                          offset: Offset(4.0, 4.0),
                          blurRadius: 12,
                          spreadRadius: 1,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(
                //     horizontal: 20,
                //   ),
                //   child: Align(
                //     alignment: Alignment.bottomLeft,
                //     child: Text(
                //       'Messages',
                //       style: TextStyle(
                //         fontSize: 24,
                //         fontWeight: FontWeight.w700,
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8.0),
                          child: Container(
                            height: 56,
                            width: 353,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  // color: Colors.white30,
                                  color: Color.fromARGB(255, 95, 126, 154),
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 2,
                                  spreadRadius: 0.1,
                                ),
                                BoxShadow(
                                  // color: Colors.white30,
                                  // color: Color.fromARGB(255, 95
                                  color: Color.fromARGB(255, 95, 126, 154),
                                  offset: Offset(-3.0, -3.0),
                                  blurRadius: 2,
                                  spreadRadius: 0.1,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: ListTile(
                                trailing: Image.asset("lib/images/next.png"),
                                leading: CircleAvatar(),
                                // leading: Container(
                                //   height: 32,
                                //   width: 32,
                                //   decoration: BoxDecoration(
                                //     color: Colors.blue,
                                //     borderRadius: BorderRadius.circular(50),
                                //   ),
                                // ),
                                title: Text(
                                  "Air Jordan",
                                  style: TextStyle(fontSize: 18),
                                ),
                                subtitle: Text(
                                  "Today, Nov 17 6:17",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
