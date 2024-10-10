import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserNotification extends StatefulWidget {
  const UserNotification({super.key});

  @override
  State<UserNotification> createState() => _UserNotificationState();
}

class _UserNotificationState extends State<UserNotification> {
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
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Container(
              height: 100.h,
              width: 250.w,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15.r),border: Border.all(color: Colors.black)),
              child: Column(
                children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                    Text("Admin Notification"),
                    SizedBox(width: 50.w,),
                    Text("10:00 am"),

                  ],),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Text("Admin Notification"),
                    ),
                  ],
                ),
                Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10.w,top: 10.h),
                          child: Text("23/05/23"),
                        ),
                      ],
                    ),
                  ],
                )
              ],),
            ),
          )
        ],
      ),
    );
  }
}
