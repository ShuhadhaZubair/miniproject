import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserSignUp extends StatefulWidget {
  const UserSignUp({super.key});

  @override
  State<UserSignUp> createState() => _UserSignUpState();
}

class _UserSignUpState extends State<UserSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(onPressed: () {

              }, icon: Icon(Icons.arrow_back_ios)),
            ),
          ],
        ),
        SizedBox(height: 20.h,),
        Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(

              image: DecorationImage(
                image: AssetImage("Mech.jfif"), )),
        ),
        // SizedBox(height: 40.h,),
        SizedBox(height: 40.h,),
        Center(
            child: Text(
              "SIGN UP",
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
            decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,
                hintText: "Username",
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15.r))),
          ),
        ),
        SizedBox(height: 10.h,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("Enter Phone Number",style: TextStyle(
                  fontWeight: FontWeight.w500,fontSize: 12.sp
              ),),
            ),
          ],
        ),
        SizedBox(height: 5.h,),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextFormField(
            decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,
                hintText: "PhoneNumber",
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15.r))),
          ),
        ),
        SizedBox(height: 10.h,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("Enter your Email",style: TextStyle(
                  fontWeight: FontWeight.w500,fontSize: 12.sp
              ),),
            ),
          ],
        ),
        SizedBox(height: 5.h,),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextFormField(
            decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,
                hintText: "Email",
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15.r))),
          ),
        ),

        SizedBox(height: 10.h,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text("Enter Password",style: TextStyle(
                  fontWeight: FontWeight.w500,fontSize: 12.sp
              ),),
            ),
          ],
        ),
        SizedBox(height: 5.h,),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: TextFormField(
            decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,
                hintText: "Password",
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(15.r))),
          ),
        ),
        SizedBox(height: 40.h,),
        InkWell(
          child: Padding(
            padding: const EdgeInsets.only(left: 100,right: 100),
            child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.blue.shade900),
              child: Center(
                  child: Text("SignUp", style: TextStyle(color: Colors.white,fontSize: 14.sp))),
            ),
          ),
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => Admin_navigation(),));
          },
        ),
        SizedBox(height: 20.h,),
      ],
      ),
    );
  }
}
