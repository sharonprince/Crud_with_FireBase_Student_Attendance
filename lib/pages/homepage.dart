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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[100],
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
        backgroundColor: Colors.deepPurple[200],
        child: Icon(
          Icons.add,
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              StudentList(),
            ],
          ),
        ),
      ),
    );
  }
}
