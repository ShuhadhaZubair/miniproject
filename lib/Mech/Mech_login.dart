import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Mech_navigation.dart';
import 'Mech_signup.dart';

class MechLogin extends StatefulWidget {
  const MechLogin({super.key});

  @override
  State<MechLogin> createState() => _MechLoginState();
}

class _MechLoginState extends State<MechLogin> {
  String id = "";
  var email = TextEditingController();
  var password = TextEditingController();

  Future<void> mechlogin() async {
    final user = await FirebaseFirestore.instance
        .collection("mechanic")
        .where("mechemail", isEqualTo: email.text)
        .where("mechpassword", isEqualTo: password.text)
        .get();
    if(user.docs.isNotEmpty){
      id=user.docs[0].id;
      SharedPreferences data = await SharedPreferences.getInstance();
      data.setString("mechid", id);
      Navigator.push(context, MaterialPageRoute(builder: (context) => MechNavigation(),));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Username and password Error')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("Mech.jfif"),
                )),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Center(
              child: Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
          )),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: Text(
                  "Enter Email",
                  style:
                      TextStyle(fontWeight: FontWeight.w800, fontSize: 16.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r))),
              controller: email,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: Text("Enter Password",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 16.sp)),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r))),
              controller: password,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue, fontSize: 14.sp),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          InkWell(
            child: Container(
              height: 50.h,
              width: 200.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.blue.shade900),
              child: Center(
                  child: Text("Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w800))),
            ),
            onTap: () {
              mechlogin();
            },
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MechSignup(),
                        ));
                  },
                  child: Text("Sign Up"))
            ],
          )
        ],
      ),
    );
  }
}
