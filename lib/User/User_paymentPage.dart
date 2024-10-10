import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserPaymentpage extends StatefulWidget {
  const UserPaymentpage({super.key});

  @override
  State<UserPaymentpage> createState() => _UserPaymentpageState();
}

class _UserPaymentpageState extends State<UserPaymentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.green),
                child: Center(child: Icon(Icons.check,color: Colors.white,size: 40.sp)),
              ),
            ],
          ),
          SizedBox(height: 30.h,),
          Text("Succesful !",style: TextStyle(fontSize: 20.sp),),
          SizedBox(height: 90.h,),
          InkWell(
            child: Container(
              height: 50.h,
              width: 200.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.blue.shade900),
              child: Center(
                  child: Text("Back To Home Page", style: TextStyle(color: Colors.white,fontSize: 17.sp))),
            ),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => Admin_navigation(),));
            },
          ),
        ],
      ),
    );
  }
}
