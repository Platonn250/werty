// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: 100,
            width: 100,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                ),
                Text("Profile"),
              ],
            )));
  }
}
