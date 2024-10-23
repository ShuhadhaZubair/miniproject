import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  Future<void> getdata()async {
    SharedPreferences data =await SharedPreferences.getInstance();
    final user = data.getString("userid");
    print("$user data fetched");
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
        body: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child:IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios),)

          ),
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
              "Enter your name",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
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
              hintText: "Name",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                  borderSide: BorderSide(color: Colors.transparent))),
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
              "Enter your Phone Number",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
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
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
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
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
          SizedBox(height: 120.h,),
          InkWell(
            child: Container(
              height: 40.h,
              width: 200.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.blue.shade900),
              child: Center(
                  child: Text("Done", style: TextStyle(color: Colors.white,fontSize: 14.sp))),
            ),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => Admin_navigation(),));
            },
          ),
    ]));
  }
}
