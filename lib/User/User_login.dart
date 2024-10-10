import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
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
                padding: const EdgeInsets.only(left: 25),
                child: Text("Enter Username",style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 12.sp
                ),),
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
          SizedBox(height: 20.h,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text("Enter Password",style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 12.sp
                )),
              ),
            ],
          ),
          SizedBox(height: 5.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Password",border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r))),
            ),
          ),
          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(onPressed: () {

                }, child: Text("Forgot Password?",style: TextStyle(color: Colors.blue),)),
              ),
            ],
          ),
          SizedBox(height: 50.h,),
          InkWell(
            child: Container(
              height: 50.h,
              width: 200.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.blue.shade900),
              child: Center(
                  child: Text("Login", style: TextStyle(color: Colors.white,fontSize: 17.sp))),
            ),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => Admin_navigation(),));
            },
          ),
          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Don't have an account?"),TextButton(onPressed: () {

            }, child: Text("Sign Up"))],)
        ],
      ),
    );
  }
}
