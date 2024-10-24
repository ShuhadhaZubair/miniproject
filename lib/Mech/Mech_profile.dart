import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Mech_profile_edit.dart';

class MechEditProfile extends StatefulWidget {
  const MechEditProfile({super.key, this.id});
  final id;

  @override
  State<MechEditProfile> createState() => _MechEditProfileState();
}

class _MechEditProfileState extends State<MechEditProfile> {

  var mech;

  DocumentSnapshot? mechp;
  Future<void> getdata() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    setState(() {
      mech = data.getString("mechid");
      print("$mech data fetched");
    });

  }

  Future<void> getbyid() async {
     mechp = await FirebaseFirestore.instance.collection("mechanic").doc(mech).get();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future:
        FirebaseFirestore.instance.collection("mechanic").doc(mech).get(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting)
        return Center(child: CircularProgressIndicator());
      else if (snapshot.hasError) return Text("Error ${snapshot.error}");
      return ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios),)

              ),
              Padding(
                  padding: EdgeInsets.all(20.w),
                  child: IconButton(onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (
                    //     context) => MechProfile(id),));
                  }, icon: Icon(Icons.edit_calendar_sharp),)

              )
            ],
          ),
          CircleAvatar(backgroundImage: AssetImage("Assets/man.jpg"),
            radius: 35.r,
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            child: Container(
              width: 250.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(mechp!["mechname"],
                          style: TextStyle(fontWeight: FontWeight.w700),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              width: 250.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(mechp!["mechname"],
                            style: TextStyle(fontWeight: FontWeight.w700),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              width: 250.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(mechp!["mechphone"],
                            style: TextStyle(fontWeight: FontWeight.w700),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              width: 250.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(mechp!["mechemail"],
                            style: TextStyle(fontWeight: FontWeight.w700),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              width: 250.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(mechp!["mechworkexp"],
                            style: TextStyle(fontWeight: FontWeight.w700),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              width: 250.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(mechp!["mechlocation"],
                            style: TextStyle(fontWeight: FontWeight.w700),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Container(
              width: 250.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(mechp!["mechshopname"],
                            style: TextStyle(fontWeight: FontWeight.w700),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 50.h,),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: Container(
                height: 50.h,
                width: 200.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.blue.shade900),
                child: Center(
                    child: Text("Done", style: TextStyle(color: Colors.white,
                        fontSize: 17.sp))),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 10.h,),

        ],
      );
    }
      ),
    );
  }
}
