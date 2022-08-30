// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  // final _userEmail = FirebaseAuth.instance.currentUser!.email;
  // final _database = FirebaseFirestore.instance.collection('users').doc();

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
        ),
      ),
    );
  }
}
