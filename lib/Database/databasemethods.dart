import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseMethods {
  Future addStudents(Map<String, dynamic> studentInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Students")
        .doc(id)
        .set(studentInfoMap);
  }

  Future<Stream<QuerySnapshot>> getStudentList()async{
    return await FirebaseFirestore.instance.collection("Students").snapshots();

  }

  updateAttendance(String attendanceCase, String id, bool value)async{
return await FirebaseFirestore.instance.collection("Students").doc(id).update({attendanceCase: value});

  }
  deleteStudents(String id)async{
    return await FirebaseFirestore.instance.collection("Students").doc(id).delete();

  }
}
