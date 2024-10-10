import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminAddUser extends StatefulWidget {
  const AdminAddUser({super.key});

  @override
  State<AdminAddUser> createState() => _AdminAddUserState();
}

class _AdminAddUserState extends State<AdminAddUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios_rounded)),
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(backgroundImage:  AssetImage("man.jpg"),radius: 40.r,),
              ],
            ),
            SizedBox(height: 20.h,),
            Text(
              "Name",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp),
            ),
            Text("Location", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.sp)),
            SizedBox(height:30.h,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Username",style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 14.sp
                  )),
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            SizedBox(height: 10.h,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Phone Number",style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 14.sp
                  )),
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(hintText: "0000000000 ",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            SizedBox(height: 10.h,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Email Address",style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 14.sp
                  )),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(hintText: "example@gmail.com ",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            SizedBox(height: 20.h,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.green.shade800),
                  child: Center(
                      child: Text("Accept", style: TextStyle(color: Colors.white,fontSize: 17.sp))),
                ),
                Container(
                  height: 50.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.red.shade800 ),
                  child: Center(
                      child: Text("Reject", style: TextStyle(color: Colors.white,fontSize: 17.sp))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}