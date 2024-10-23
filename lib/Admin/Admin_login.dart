import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Admin_navigation.dart';



class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final formkey = GlobalKey<FormState>();
  var name =TextEditingController();
  var password = TextEditingController();

  Future<void> logindetails() async{
    if(name.text=="admin@gmail.com" && password.text=="123") {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Admin_navigation(),));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Username and password error')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(key: formkey,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(

                      image: DecorationImage(
                        image: AssetImage("Mech.jfif"), )),
                ),
              ],
            ),
            SizedBox(height: 40.h,),
            Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20.sp
                  ),
                )),
            SizedBox(height: 20.h,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:EdgeInsets.only(left: 25.w),
                  child: Text("Enter Username",style: TextStyle(
                      fontWeight: FontWeight.w500,fontSize: 16.sp
                  ),),
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r))),
                validator: (value) {
                  if(value!.isEmpty) {
                    return "Invalid";
                  }
                },
                controller: name,
              ),
            ),
            SizedBox(height: 20.h,),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:EdgeInsets.only(left: 25.w),
                  child: Text("Enter Password",style: TextStyle(
                      fontWeight: FontWeight.w500,fontSize: 16.sp
                  )),
                ),
              ],
            ),
            SizedBox(height: 5.h,),
            Padding(
              padding:EdgeInsets.only(left: 20.w,right: 20.w),
              child: TextFormField(obscureText: true,
                decoration: InputDecoration(hintText: "Password",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r))),
                validator: (value) {
                  if(value!.isEmpty) {
                    return "Invalid";
                  }
                },
                controller: password,
              ),
            ),
            SizedBox(height: 50.h,),
            InkWell(
              child: Container(
                height: 50.h,
                width: 250.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.blue.shade900),
                child: Center(
                    child: Text("Login", style: TextStyle(color: Colors.white,fontSize: 17.sp))),
              ),
              onTap: () {
                logindetails();
              },
            )
          ],
        ),
      ),
    );
  }
}
