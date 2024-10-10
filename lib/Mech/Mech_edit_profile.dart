import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Mech_profile.dart';

class MechEditProfile extends StatefulWidget {
  const MechEditProfile({super.key});

  @override
  State<MechEditProfile> createState() => _MechEditProfileState();
}

class _MechEditProfileState extends State<MechEditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child:IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon:   Icon(Icons.arrow_back_ios),)

              ),
              Padding(
                padding: EdgeInsets.all(20.w),
                child: IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MechProfile(),));
                }, icon:  Icon(Icons.edit_calendar_sharp),)

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
            padding:EdgeInsets.only(left: 25.w,right: 25.w),
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
                        Text("Name",style: TextStyle(fontWeight: FontWeight.w700),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
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
                          Text("Username",style: TextStyle(fontWeight: FontWeight.w700),),
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
            padding: const EdgeInsets.only(left: 25,right: 25),
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
                          Text("PhoneNumber",style: TextStyle(fontWeight: FontWeight.w700),),
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
            padding: const EdgeInsets.only(left: 25,right: 25),
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
                          Text("Email",style: TextStyle(fontWeight: FontWeight.w700),),
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
            padding: const EdgeInsets.only(left: 25,right: 25),
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
                          Text("Experience",style: TextStyle(fontWeight: FontWeight.w700),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height:20.h,),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
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
                          Text("Location",style: TextStyle(fontWeight: FontWeight.w700),),
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
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Container(
              width: 250.w,
              height: 50.h,
              decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15.r)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child:Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Shop Name",style: TextStyle(fontWeight: FontWeight.w700),),
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
              padding: const EdgeInsets.only(left: 100,right: 100),
              child: Container(
                height: 50.h,
                width: 200.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.blue.shade900),
                child: Center(
                    child: Text("Done", style: TextStyle(color: Colors.white,fontSize: 17.sp))),
              ),
            ),
            onTap: () {
             Navigator.pop(context);
            },
          ),
          SizedBox(height: 10.h,),

        ],
      ),
    );
  }
}
