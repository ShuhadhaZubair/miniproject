import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Admin/Admin_login.dart';
import 'Mech/Mech_login.dart';
import 'User/User_login.dart';

class UserMech extends StatefulWidget {
  const UserMech({super.key});

  @override
  State<UserMech> createState() => _UserMechState();
}

class _UserMechState extends State<UserMech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(onPressed: () {
Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_ios)),
            ),
          ],
        ),
        // SizedBox(height:40.h),
        Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(

              image: DecorationImage(
                image: AssetImage("Mech.jfif"), )),
        ),
        // SizedBox(height:40.h),

        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:EdgeInsets.only(left: 40.w),
              child: Text("Who you are",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.sp),),
            ),
          ],
        ),
        // SizedBox(height:20.h),

        InkWell(
          child: Container(
            height: 50.h,
            width: 300.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Colors.blue.shade900),
            child: Center(
                child: Text("Mechanic", style: TextStyle(color: Colors.white,fontSize: 18.sp))),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>MechLogin(),));
          },
        ),
        // SizedBox(height:20.h),

        InkWell(
          child: Container(
            height: 50.h,
            width: 300.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Colors.blue.shade100),
            child: Center(
                child: Text("User", style: TextStyle(color: Colors.black,fontSize: 18.sp))),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => UserLogin(),));
          },
        ),
        // SizedBox(height:20.h),

        TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AdminLogin(),));
        }, child: Text("Admin Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.sp),)),
        // SizedBox(height:80.h),

        // InkWell(
        //   child: Container(
        //     height: 50.h,
        //     width: 200.w,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(15.r),
        //         color: Colors.blue.shade900),
        //     child: Center(
        //         child: Text("Continue", style: TextStyle(color: Colors.white,fontSize: 12.sp))),
        //   ),
        //   onTap: () {
        //     // Navigator.push(context, MaterialPageRoute(builder: (context) => Admin_navigation(),));
        //   },
        // ),
      ],),
    );
  }
}
