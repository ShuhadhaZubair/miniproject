import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Admin/Admin_navigation.dart';
import 'Mech_navigation.dart';

class MechProfile extends StatefulWidget {
  const MechProfile({super.key,required this.id});
final id;
  @override
  State<MechProfile> createState() => _MechProfileState();
}

class _MechProfileState extends State<MechProfile> {
var edit_username = TextEditingController();
var edit_phone = TextEditingController();
var edit_email = TextEditingController();
var edit_workexp = TextEditingController();
var edit_shopname = TextEditingController();
var edit_location = TextEditingController();
var edit_password = TextEditingController();
 var mech;

Future<void> getdata() async {
  SharedPreferences data = await SharedPreferences.getInstance();
  setState(() {
    mech = data.getString("mechid");
    print("$mech data fetched");
  });

}

Future<void> update() async{
  FirebaseFirestore.instance.collection("mechanic").doc(mech).update({
    "mechusername" : edit_username.text,
    "mechphone" : edit_phone,
    "mechemail" : edit_email,
    "mechworkexp" : edit_workexp,
    "mechshopname" : edit_shopname,
    "mechlocation" : edit_location,
    "mechpassword" : edit_password

  });
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MechNavigation(),
      ));
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

          ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      )),
                ],
              ),
              CircleAvatar(
                backgroundImage: AssetImage("Assets/man.jpg"),
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
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12.sp),
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
                      hintText: "username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.r),
                          borderSide: BorderSide(color: Colors.transparent))),
                  controller: edit_username,
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
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12.sp),
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
                  controller: edit_phone,
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
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12.sp),
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
                controller: edit_email,
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
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12.sp),
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
                controller: edit_workexp,
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
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12.sp),
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
               controller: edit_shopname,
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
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 12.sp),
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
                  controller: edit_password,
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
                          style:
                              TextStyle(color: Colors.white, fontSize: 17.sp))),
                ),
                onTap: () {
                 update();
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
