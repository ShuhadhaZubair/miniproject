import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'User_requestMechanicList.dart';
import 'User_signup.dart';
import 'User_tabbar.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final formkey= GlobalKey<FormState>();
  var email = TextEditingController();
  var password = TextEditingController();
  String id = "";

  Future<void> userlogin() async {
    final user = await FirebaseFirestore.instance
        .collection("User")
        .where("email", isEqualTo: email.text)
        .where("password", isEqualTo: password.text)
        .where("statuskey",isEqualTo: 1)
        .get();

    if(user.docs.isNotEmpty){
      id=user.docs[0].id;
      SharedPreferences data = await SharedPreferences.getInstance();
      data.setString("userid", id);
      Navigator.push(context, MaterialPageRoute(builder: (context) =>  UserTabbar(),));
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
      body: Form(key: formkey,
        child: Column(
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
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "Enter Email",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
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
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r))),
                controller: email,
                validator: (value){
                  if(value!.isEmpty){
                    return "Invalid Username";
                  }
                }
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Enter Password",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp)),
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
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r))),
                  controller: password,
                  validator: (value){
                    if(value!.isEmpty){
                      return "Invalid Username";
                    }
                  }

              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.blue),
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
                        style: TextStyle(color: Colors.white, fontSize: 17.sp))),
              ),
              onTap: () {
                if (formkey.currentState!.validate()){
                  userlogin();
                }

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
                            builder: (context) => UserSignUp(),
                          ));
                    },
                    child: Text("Sign Up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
