import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserMechanicBillpage extends StatefulWidget {
  const UserMechanicBillpage({super.key});

  @override
  State<UserMechanicBillpage> createState() => _UserMechanicBillpageState();
}

class _UserMechanicBillpageState extends State<UserMechanicBillpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Text("Mechanic Bill"),
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
            child: Text("Amount",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500),),
          ),
        ],
      ),
      SizedBox(height: 10.h,),
        SizedBox(height: 40.h,),
        Center(
          child: Container(
            height: 30.h,
            width: 150.w,
            decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(10.r)),
            child: Center(child: Text("2000/-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14.sp),)),
          ),
        ),
        SizedBox(height: 40.h,),
        InkWell(
          child: Container(
            height: 40.h,
            width: 150.w,
            decoration: BoxDecoration(color: Colors.blue.shade900, borderRadius: BorderRadius.circular(10.r)),
            child: Center(child: Text("Pay",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15.sp),)),
          ),
        ),
      ])
    );
  }
}
