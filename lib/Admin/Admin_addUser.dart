import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminAddUser extends StatefulWidget {
  const AdminAddUser({super.key,required this.id});
  final id;
  @override
  State<AdminAddUser> createState() => _AdminAddUserState();
}

class _AdminAddUserState extends State<AdminAddUser> {
  DocumentSnapshot? user;
  Future<void> getbyid() async {
    user = await FirebaseFirestore.instance
        .collection("User")
        .doc(widget.id)
        .get();
  }

  Future<void> _dataaccepted() async{
    FirebaseFirestore.instance.collection("User").doc(widget.id).update({"statuskey" : 1});
    Navigator.pop(context);
  }

  Future<void> _datarejected() async{
    FirebaseFirestore.instance.collection("User").doc(widget.id).update({"statuskey" : 2});
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: getbyid(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());
            else if (snapshot.hasError) return Text("Error ${snapshot.error}");
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios_rounded)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("man.jpg"),
                      radius: 40.r,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  user!["username"],
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
                Text(user!["location"],
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17.sp)),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text("Username",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14.sp)),
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
                        hintText: user!["username"],
                        border: OutlineInputBorder(
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
                      child: Text("Phone Number",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14.sp)),
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
                        hintText: user!["phone"],
                        border: OutlineInputBorder(
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
                      child: Text("Email Address",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14.sp)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: user!["email"],
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.r))),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(onTap: _dataaccepted,
                      child: Container(
                        height: 50.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.green.shade800),
                        child: Center(
                            child: Text("Accept",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17.sp))),
                      ),
                    ),
                    InkWell(onTap: _datarejected,
                      child: Container(
                        height: 50.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            color: Colors.red.shade800),
                        child: Center(
                            child: Text("Reject",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17.sp))),
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
