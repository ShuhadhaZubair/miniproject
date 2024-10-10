import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserMechanicdetails extends StatefulWidget {
  const  UserMechanicdetails({super.key});

  @override
  State<UserMechanicdetails> createState() => _UserMechanicdetailsState();
}

class _UserMechanicdetailsState extends State<UserMechanicdetails> {
  String _selectedItem = 'Fuel Leaking';
  final List<String> _options = [
    'Fuel Leaking',


  ];
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
      // SizedBox(height: 10.h,),
      // Row(mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Icon(Icons.star,color: Colors.yellow.shade800,),
      //     Icon(Icons.star,color: Colors.yellow.shade800,),
      //     Icon(Icons.star,color: Colors.yellow.shade800,),
      //     Icon(Icons.star,color: Colors.yellow.shade800,),
      //     Icon(Icons.star_half,color: Colors.yellow.shade800,),
      //
      //   ],),
      SizedBox(height: 10.h,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text("Add Needed Service",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
            ),

          ],
        ),
        SizedBox(height: 20.h,),
        Container(height: 35.h,width: 300.w,
          decoration: BoxDecoration(color: Colors.blue.shade100,borderRadius: BorderRadius.circular(10.r)),
          child: DropdownButton<String>(focusColor: Colors.blue.shade100,
            isExpanded: true,
            padding: EdgeInsets.only(left: 20.w,right: 20.w),
            value: _selectedItem,
            items: _options.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedItem = newValue!;
              });
            },

          ),
        ),
        SizedBox(height: 20.h,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Text("Place",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),),
            ),

          ],
        ),
        SizedBox(height: 10.h,),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: TextField(maxLines: 5,
              decoration: InputDecoration(fillColor: Colors.blue.shade100,filled: true,
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
                child: Text("Request", style: TextStyle(color: Colors.white,fontSize: 14.sp))),
          ),
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => Admin_navigation(),));
          },
        ),
      ]
      )
    );
  }
}
