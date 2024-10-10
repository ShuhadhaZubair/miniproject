import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminAddNotification extends StatefulWidget {
  const AdminAddNotification({super.key});

  @override
  State<AdminAddNotification> createState() => _AdminAddNotificationState();
}

class _AdminAddNotificationState extends State<AdminAddNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Enter Matter",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          // Center(
          //     child: Container(
          //   height: 50.h,
          //   width: 325.w,
          //   decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          // )),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: TextField(maxLines: 2,
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r))),),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Enter Content",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          // Center(
          //     child: Container(
          //         height: 300.h,
          //         width: 325.w,
          //         decoration:
          //             BoxDecoration(border: Border.all(color: Colors.black)))),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: TextField(maxLines: 7,
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r))),),
          ),
        ],
      ),
    );
  }
}