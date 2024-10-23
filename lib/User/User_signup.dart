import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'User_requestMechanicList.dart';

class UserSignUp extends StatefulWidget {
  const UserSignUp({super.key});

  @override
  State<UserSignUp> createState() => _UserSignUpState();
}

class _UserSignUpState extends State<UserSignUp> {
  final formkey= GlobalKey<FormState>();
  var username = TextEditingController();
  var phone = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var location = TextEditingController();
  
  Future<void>user_details() async{

    DateTime now = DateTime.now();
    String formattedDate = "${now.year}-${now.month}-${now.day}";
    String formattedTime = "${now.hour}:${now.minute}:${now.second}";


    FirebaseFirestore.instance.collection("User").add({
      "username": username.text,
      "phone" : phone.text,
      "email" : email.text,
      "password" : password.text,
      "location" : location.text,
      "statuskey" : 0,
      "profilepath" : "https://cdn-icons-png.flaticon.com/512/660/660611.png",
      "date": formattedDate, // add date key
      "time": formattedTime,


    });
    print("Data uploaded succesfully");
    Navigator.push(context, MaterialPageRoute(builder: (context) => UserRequestmechaniclist(),));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(key: formkey,
        child: ListView(children: [
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
                    fontWeight: FontWeight.w500,fontSize: 16.sp
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
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r),borderSide: BorderSide.none)),
              validator: (value){
                if(value!.isEmpty){
                  return "Invalid Username";
                }
              },
              controller: username,
            ),
          ),
          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text("Enter Phone Number",style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 16.sp
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
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r),borderSide: BorderSide.none)),
              validator: (value){
                if(value!.isEmpty){
                  return "Invalid PhoneNumber";
                }
              },
              controller: phone,
            ),
          ),
          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text("Enter your Email",style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 16.sp
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
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r),borderSide: BorderSide.none)),
              validator: (value){
                if(value!.isEmpty){
                  return "Invalid Email";
                }
              },
              controller: email,
            ),
          ),

          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text("Enter Password",style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 16.sp
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
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r),borderSide: BorderSide.none)),
              validator: (value){
                if(value!.isEmpty){
                  return "Incorrect password";
                }
              },
              controller: password,
            ),
          ),
          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text("Enter Location",style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 16.sp
                ),),
              ),
            ],
          ),
          SizedBox(height: 5.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,
                  hintText: "location",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.r),borderSide: BorderSide.none)),
              validator: (value){
                if(value!.isEmpty){
                  return "Invalid Location";
                }
              },
              controller: location,
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
                    child: Text("SignUp", style: TextStyle(color: Colors.white,fontSize: 18.sp))),
              ),
            ),
            onTap: () {
            if(formkey.currentState!.validate()){
              user_details();
            }
            },
          ),
          SizedBox(height: 20.h,),
        ],
        ),
      ),
    );
  }
}
