import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_with_crud/Database/databasemethods.dart';
import 'package:firebase_with_crud/pages/addstudent.dart';
import 'package:firebase_with_crud/widgets/StudentList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  Stream? studentStream;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Student ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24),
            ),
            Text(
              "Attendance",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 24),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => addStudent()));
        },
        backgroundColor: Colors.blue[300],
        child: Icon(
          Icons.add,
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 10, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
           StudentList(),
          ],
        ),
      ),
    );
  }
}
