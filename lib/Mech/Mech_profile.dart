import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Admin/Admin_navigation.dart';
import 'Mech_navigation.dart';

class MechProfile extends StatefulWidget {
  const MechProfile({super.key});

  @override
  State<MechProfile> createState() => _MechProfileState();
}

class _MechProfileState extends State<MechProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child:IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_ios),)

              ),
            ],
          ),
          CircleAvatar(backgroundImage: AssetImage("Assets/man.jpg"),
            radius: 40.r,
          ),
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Enter Username",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
fillColor: Colors.blue.shade100,
                  filled: true,

                  disabledBorder: InputBorder.none,
                  hintText: "Username",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r),borderSide: BorderSide(color: Colors.transparent))),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Enter Phone Number",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.blue.shade100,
                  filled: true,
                  hintText: "PhoneNumber",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.r))),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Enter your Email",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.blue.shade100,
                  filled: true,
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(color: Colors.transparent))),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Enter your work experience",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.blue.shade100,
                  filled: true,
                  hintText: "Work Experience",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.r))),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Enter your workshop name",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.blue.shade100,
                  filled: true,
                  hintText: "Workshop Name",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue.shade100,
                      ),
                      borderRadius: BorderRadius.circular(15.r))),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Enter Password",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.blue.shade100,
                  filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.r))),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.blue.shade900),
              child: Center(
                  child: Text("Submit",
                      style: TextStyle(color: Colors.white, fontSize: 17.sp))),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MechNavigation(),));
            },
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
