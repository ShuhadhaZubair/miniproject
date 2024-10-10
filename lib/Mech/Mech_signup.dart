import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Mech_navigation.dart';

class MechSignup extends StatefulWidget {
  const MechSignup({super.key});

  @override
  State<MechSignup> createState() => _MechSignupState();
}

class _MechSignupState extends State<MechSignup> {
  final formkey = GlobalKey<FormState>();
  var mechusername = TextEditingController();
  var mechphone = TextEditingController();
  var mechemail = TextEditingController();
  var mechworkexp= TextEditingController();
  var mechshopname = TextEditingController();
  var mechpassword = TextEditingController();
  var location = TextEditingController();

  Future<void>add_mechdetails() async{
    FirebaseFirestore.instance.collection("mechanic").add({
      "mechname" : mechusername.text,
      "mechphone" : mechphone.text,
      "mechemail" : mechemail.text,
      "mechworkexp" : mechworkexp.text,
      "mechshopname" : mechshopname.text,
      "mechpassword" : mechpassword.text,
      "mechlocation" : location.text,
      "statuskey" : 0,
      "profilepath" : "https://cdn-icons-png.flaticon.com/512/660/660611.png"

    });
    print("Signed Up Succesfully");
    Navigator.pop(context);
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
            padding:EdgeInsets.only(left: 20.w, right: 20.w),
            child: TextFormField(
              decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,
                  hintText: "Username",
                border: InputBorder.none,

                ),
              validator: (value) {
                if(value!.isEmpty) {
                  return "Invalid";
                }
              },
              controller: mechusername,
            ),
          ),
          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: Text("Enter Phone Number",style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 16.sp
                ),),
              ),
            ],
          ),
          SizedBox(height: 5.h,),
          Padding(
            padding:EdgeInsets.only(left: 20.w, right: 20.w),
            child: TextFormField(
              decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,
                  hintText: "PhoneNumber",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r))),
              validator: (value) {
                if(value!.isEmpty) {
                  return "Invalid";
                }
              },
              controller: mechphone,
            ),
          ),
          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:EdgeInsets.only(left: 25.w),
                child: Text("Enter your Email",style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 16.sp
                ),),
              ),
            ],
          ),
          SizedBox(height: 5.h,),
          Padding(
            padding:EdgeInsets.only(left: 20.w, right: 20.w),
            child: TextFormField(
              decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,
                  hintText: "Email",
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.r))),
              validator: (value) {
                if(value!.isEmpty) {
                  return "Invalid";
                }
              },
              controller: mechemail,
            ),
          ),
          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: Text("Enter your work experience",style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 16.sp
                ),),
              ),
            ],
          ),
          SizedBox(height: 5.h,),
          Padding(
            padding:EdgeInsets.only(left: 20.w, right: 20.w),
            child: TextFormField(
              decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,
                  hintText: "Work Experience",
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.r))),
              validator: (value) {
                if(value!.isEmpty) {
                  return "Invalid";
                }
              }, controller: mechworkexp,
            ),
          ),
          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: Text("Enter your workshop name",style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 16.sp
                ),),
              ),
            ],
          ),
          SizedBox(height: 5.h,),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: TextFormField( controller: mechshopname,
              decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,
                  hintText: "Workshop Name",
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue.shade100,
                  ),
                      borderRadius: BorderRadius.circular(15.r))),
              validator: (value) {
                if(value!.isEmpty) {
                  return "Invalid";
                }
              },
            ),
          ),
          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: Text("Enter Password",style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 16.sp
                ),),
              ),
            ],
          ),
          SizedBox(height: 5.h,),
          Padding(
            padding:EdgeInsets.only(left: 20.w, right: 20.w),
            child: TextFormField(
              decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.r))),
              validator: (value) {
                if(value!.isEmpty) {
                  return "Invalid";
                }
              },
              controller: mechpassword,
            ),
          ),
          SizedBox(height: 10.h,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:EdgeInsets.only(left: 25.w),
                child: Text("Location",style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 16.sp
                ),),
              ),
            ],
          ),
          SizedBox(height: 5.h,),
          Padding(
            padding:  EdgeInsets.only(left: 20.w, right: 20.w),
            child: TextFormField(
              decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,
                  hintText: "Location",
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(15.r))),
              validator: (value) {
                if(value!.isEmpty) {
                  return "Invalid";
                }
              }, controller: location,
            ),
          ),
          SizedBox(height: 20.h,),
          InkWell(
            child: Padding(
              padding:EdgeInsets.only(left: 50.w,right: 50.w),
              child: Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.blue.shade900),
                child: Center(
                    child: Text("SignUp", style: TextStyle(color: Colors.white,fontSize: 17.sp))),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MechNavigation(),));
            },
          ),
          SizedBox(height: 20.h,),
        ],
        ),
      ),

    );
  }
}
