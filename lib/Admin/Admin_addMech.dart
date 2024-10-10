import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminAddMech extends StatefulWidget {
  const AdminAddMech({super.key});

  @override
  State<AdminAddMech> createState() => _AdminAddMechState();
}

class _AdminAddMechState extends State<AdminAddMech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.all(10.w),
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
            SizedBox(height: 5.h,),
            Center(
              child: Text(
                "Name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Center(child: Text("Location", style: TextStyle(fontWeight: FontWeight.bold))),
            SizedBox(height:30.h,),
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text("Mech Username",style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 14.sp
              )),
            ),
            SizedBox(height: 5.h,),
            Padding(
              padding:  EdgeInsets.only(left: 20.w, right: 20.w),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            SizedBox(height: 15.h,),
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text("Phone Number",style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 14.sp
              )),
            ),
            SizedBox(height: 5.h,),
            Padding(
              padding: EdgeInsets.only(left: 20.w,right: 20.w),
              child: TextFormField(
                decoration: InputDecoration(hintText: "0000000000 ",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            SizedBox(height: 15.h,),
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text("Email Address",style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 14.sp
              )),
            ),
            SizedBox(height: 5.h,),
            Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 20.w),
              child: TextFormField(
                decoration: InputDecoration(hintText: "example@gmail.com ",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            SizedBox(height: 15.h,),
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text("Work Experience",style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 14.sp
              )),
            ),

            SizedBox(height: 5.h,),
            Padding(
              padding: EdgeInsets.only(left: 20.w,right: 20.w),
              child: TextFormField(
                decoration: InputDecoration(hintText: "experience ",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            SizedBox(height: 15.h,),
            Padding(
              padding:  EdgeInsets.only(left: 25),
              child: Text("Workshop name",style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 14.sp
              )),
            ),

            SizedBox(height: 5.h,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(hintText: "shop name ",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("Location",style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 14.sp
              )),
            ),

            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                decoration: InputDecoration(hintText: "enter your location ",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r))),
              ),
            ),
            SizedBox(height: 100.h,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.green),
                  child: Center(
                      child: Text("Accept", style: TextStyle(color: Colors.white,fontSize: 17.sp))),
                ),
                Container(
                  height: 50.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.red),
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
