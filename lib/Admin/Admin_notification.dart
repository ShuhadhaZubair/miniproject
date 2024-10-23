import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Admin_addNotification.dart';

class AdminNotification extends StatefulWidget {
  const AdminNotification({super.key});

  @override
  State<AdminNotification> createState() => _AdminNotificationState();
}

class _AdminNotificationState extends State<AdminNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade50,
        floatingActionButton: FloatingActionButton(
          child: Center(
            child: Icon(Icons.add),
          ),
          shape: CircleBorder(side: BorderSide(color: Colors.black)),
          onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => AdminAddNotification(),));
          },
        ),
        body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("notification").snapshots(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting)
        return Center(child: CircularProgressIndicator());
      else if (snapshot.hasError) return Text("Error ${snapshot.error}");
      final notification = snapshot.data?.docs ?? [];
      return
        ListView.builder(itemBuilder: (context, index) {
          var doc = notification[index];
          final _data = doc.data() as Map <String,dynamic>;
          return Padding(
            padding: const EdgeInsets.only(
                top: 10, bottom: 10, left: 25, right: 25),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          _data["matter"]??"",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Text(
                        _data["content"]??""),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: notification.length,
        );
    }
    )
    );
  }
}