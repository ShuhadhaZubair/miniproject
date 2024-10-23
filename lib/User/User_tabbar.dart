import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'User_mechanicList.dart';
import 'User_profile.dart';
import 'User_requestMechanicList.dart';

class UserTabbar extends StatefulWidget {
  const UserTabbar({super.key});

  @override
  State<UserTabbar> createState() => _UserTabbarState();
}

class _UserTabbarState extends State<UserTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade100,
          leading: Padding(
            padding: EdgeInsets.all(10.w),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfile(),));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("Assets/man.jpg"),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10.w),
              child: Icon(
                Icons.notification_add,
                color: Colors.yellow.shade800,
              ),
            )
          ],

          // title:
        ),
        bottomNavigationBar: Padding(
          padding:EdgeInsets.only(left: 20.w,right: 20.w,bottom: 20.h),
          child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.indigoAccent,
            ),
            tabs: [
              Tab(
                child: Text(
                  'Mechanic',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.h,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Requests',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16.sp,

                    fontWeight: FontWeight.w500,
                    height: 0.h,
                  ),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            UserMechaniclist(),
            UserRequestmechaniclist(),
          ],
        ),
      ),
    );
  }
}
