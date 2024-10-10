import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserRatingpage extends StatefulWidget {
  const UserRatingpage({super.key});

  @override
  State<UserRatingpage> createState() => _UserRatingpageState();
}

class _UserRatingpageState extends State<UserRatingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Text("Your Rating"),
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

        ],),
        SizedBox(height: 10.h,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text("Add Rating",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),),
            ),
          ],
        ),
        SizedBox(height: 10.h,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.star_border,size: 30.sp,),),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.star_border,size: 30.sp),),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.star_border,size: 30.sp),),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.star_border,size: 30.sp),),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.star_border,size: 30.sp),),
        ],),
        SizedBox(height: 120.h,),
        InkWell(
          child: Container(
            height: 50.h,
            width: 200.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Colors.blue.shade900),
            child: Center(
                child: Text("Submit", style: TextStyle(color: Colors.white,fontSize: 14.sp))),
          ),
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => Admin_navigation(),));
          },
        ),
      ],),
    );
  }
}
