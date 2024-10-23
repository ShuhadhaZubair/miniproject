import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MechNotification extends StatefulWidget {
  const MechNotification({super.key});

  @override
  State<MechNotification> createState() => _MechNotificationState();
}

class _MechNotificationState extends State<MechNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Text("Notification"),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(20),
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection("notification").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());
            else if (snapshot.hasError) return Text("Error ${snapshot.error}");
            final notification = snapshot.data?.docs ?? [];
            return ListView.builder(itemBuilder: (context, index) {
              var doc = notification[index];
              final _data = doc.data() as Map<String, dynamic>;
              return Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Text("Admin Notification"),
                                SizedBox(
                                  width: 50.w,
                                ),
                                Text( _data["time"]??""),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: SizedBox(width: 200.w,
                                    child: Text( _data["content"]??"")),
                      
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 10.w, top: 10.h),
                                    child: Text( _data["date"]??""),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
            itemCount: notification.length,
            );
          }),
    );
  }
}
