import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MechRating extends StatefulWidget {
  const MechRating({super.key});

  @override
  State<MechRating> createState() => _MechRatingState();
}

class _MechRatingState extends State<MechRating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Text("Rating"),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(20),
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(children: [
        SizedBox(height: 20.h,),
        Center(child: Text("The rating given to you")),
        SizedBox(height: 20.h,),
        Center(
          child: Padding(
            padding:  EdgeInsets.only(left: 25.w,right: 25.w),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                      child: Column(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text("Name")
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(right: 20, top: 5, bottom: 5),
                      child: Column(
                        children: [
                          Text("Fuel leaking"),
                          Text("Date"),
                          Text("Time"),
                          Text("Place")
                        ],
                      ),
                    ),
                   Column(children: [
                Text("Rating"),
                     Row(children: [
                       Icon(Icons.star,color: Colors.yellow.shade800,size: 15.sp,),
                       Icon(Icons.star,color: Colors.yellow.shade800,size: 15.sp),
                       Icon(Icons.star,color: Colors.yellow.shade800,size: 15.sp),
                       Icon(Icons.star,color: Colors.yellow.shade800,size: 15.sp),
                       Icon(Icons.star_border,size: 15.sp)
                     ],),
                     Text("4/5",style:TextStyle(fontWeight: FontWeight.bold) ,)
                   ],)
                  ],
                ),
              ),
              color: Colors.blue.shade50,
            ),
          ),
        ),
      ],),
    );
  }
}
