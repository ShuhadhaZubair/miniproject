import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Mech_home.dart';

class MechAcceptReject extends StatefulWidget {
  const MechAcceptReject({super.key,required this.id});
final id;
  @override
  State<MechAcceptReject> createState() => _MechAcceptRejectState();
}

class _MechAcceptRejectState extends State<MechAcceptReject> {
  DocumentSnapshot?user;
  Future<void> getbyid() async{
    user=await FirebaseFirestore.instance.collection("User").doc(widget.id).get();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getbyid(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(child: CircularProgressIndicator());
          else if (snapshot.hasError) return Text("Error ${snapshot.error}");
          return  Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: IconButton(onPressed: () {
                        Navigator.pop(context);
                      }, icon:  Icon(Icons.arrow_back_ios),)

                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 35.w, right: 35.w),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                        CircleAvatar(backgroundImage: AssetImage("Assets/ICon.jfif"),
                          radius: 40.r,
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Problem"),
                                Text("Place"),
                                Text("Date"),
                                Text("Time"),
                                Text("Contact Number")
                              ],
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("leaking"),
                                Text(user!["location"]),
                                Text(user!["date"]),
                                Text(user!["time"]),
                                Text(user!["phone"])
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 100.h,
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => Accepted(),));
                            },
                              child: Container(
                                height: 35.h,
                                width: 70.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    color: Colors.green.shade700),
                                child: Center(child: Text("Accept",style: TextStyle(color: Colors.white),)),
                              ),
                            ),
                            Container(
                              height: 35.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: Colors.red.shade700),
                              child: Center(child: Text("Decline",style: TextStyle(color: Colors.white),)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },

      ),
    );
  }
}
