import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserFailedpage extends StatefulWidget {
  const UserFailedpage({super.key});

  @override
  State<UserFailedpage> createState() => _UserFailedpageState();
}

class _UserFailedpageState extends State<UserFailedpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Text("Failed Project"),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(20),
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(children: [
          SizedBox(height:20.h),
      CircleAvatar(radius: 50.r,),
      SizedBox(height: 20.h,),
      Text("Name",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500),),
      Text("2+ years experience"),
      SizedBox(height: 10.h,),
      Container(
        height: 25.h,
        width: 85.w,
        decoration:
        BoxDecoration(color: Colors.green.shade800,borderRadius: BorderRadius.circular(15.r)),
        child: Center(child: Text("Approved",style: TextStyle(color: Colors.white),)),
      ),
      SizedBox(height: 10.h,),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star,color: Colors.yellow.shade800,),
          Icon(Icons.star,color: Colors.yellow.shade800,),
          Icon(Icons.star,color: Colors.yellow.shade800,),
          Icon(Icons.star,color: Colors.yellow.shade800,),
          Icon(Icons.star_half,color: Colors.yellow.shade800,),
          SizedBox(width:10.w),
          Icon(Icons.edit,size: 10.sp,),

        ],),
      SizedBox(height: 10.h,),
      Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Text("Failed Reason",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500),),
          ),
        ],
      ),
        SizedBox(height: 10.h,),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: TextField(maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue.shade100),
                    borderRadius: BorderRadius.circular(15.r)),

              ),
            ),
          ),
        ),
        SizedBox(height: 20.h,),
        InkWell(
          child: Container(
            height: 50.h,
            width: 200.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Colors.blue.shade900),
            child: Center(
                child: Text("OK", style: TextStyle(color: Colors.white,fontSize: 14.sp))),
          ),
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => Admin_navigation(),));
          },
        ),
      ])
    );
  }
}
