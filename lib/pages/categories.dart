// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dateapp/pages/businesstyppage.dart';
import 'package:flutter/material.dart';

bool isSlected = false;

class CategoriesPage extends StatefulWidget {
  CategoriesPage({Key? key}) : super(key: key);
  final id = 'categoriespage';

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    final titles = [
      'Shop',
      'Mall',
      'Gas Station',
      'Motel',
      'Hosts',
      'Other',
    ];
    final selecetedTitles = [];

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
        toolbarHeight: 200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // ListTile(
          //   leading: CircleAvatar(
          //     backgroundColor: Color.fromRGBO(46, 80, 112, 1),
          //     radius: 10,
          //   ),
          //   title: Text(
          //     titles[0],
          //     style: TextStyle(
          //       fontSize: 24,
          //       color: Color.fromRGBO(46, 80, 112, 1),
          //       fontWeight: FontWeight.w700,
          //     ),
          //   ),
          //   trailing: Icon(Icons.verified),
          // ),
          Expanded(
            flex: 5,
            child: Container(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        color: isSlected ? Color.fromRGBO(8, 43, 55, 1) : null,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isSlected = !isSlected;
                            });
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Color.fromRGBO(46, 80, 112, 1),
                              radius: 10,
                            ),
                            title: Text(
                              titles[index],
                              style: TextStyle(
                                fontSize: 24,
                                color: Color.fromRGBO(46, 80, 112, 1),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            trailing: Icon(Icons.verified),
                          ),
                        ),
                      ),
                    ),
                  );
                },
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
            child: GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return HomeView();
                // }));
                Navigator.pushNamed(context, BusinessType().id);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                        "Continue",
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
          ),
        ],
      ),
    );
  }
}
