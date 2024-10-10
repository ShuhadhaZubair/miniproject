import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Mech_accept_reject.dart';
import 'Mech_edit_profile.dart';
import 'Mech_status_complete.dart';

class MechHome extends StatefulWidget {
  const MechHome({super.key});

  @override
  State<MechHome> createState() => _MechHomeState();
}

class _MechHomeState extends State<MechHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MechEditProfile(),));
          },
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: CircleAvatar(
                backgroundImage: AssetImage("Assets/man.jpg"),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                Icons.notification_add,size: 26.sp,
                color: Colors.yellow.shade800,
              ),
            )
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorPadding: EdgeInsets.only(left: 20, right: 20),
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Colors.indigoAccent,
            ),
            tabs: [
              Tab(
                child: Text(
                  'Requests',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Accepted',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 16.sp,

                    fontWeight: FontWeight.bold,

                  ),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Requests(),
            Accepted()
          ],
        ),
      ),
    );
  }
}

class Requests extends StatefulWidget {
  const Requests({super.key});

  @override
  State<Requests> createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
            child: InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  MechAcceptReject(),));
            },
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                      child: Column(
                        children: [
                          CircleAvatar( backgroundImage: AssetImage("Assets/ICon.jfif"),radius:35.r,),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text("Name",style: TextStyle(fontSize: 18.sp),)
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 20, top: 5, bottom: 5),
                      child: Column(
                        children: [
                          Text("Fuel leaking",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500)),
                          Text("Date",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500)),
                          Text("Time",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500)),
                          Text("Place",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500))
                        ],
                      ),
                    )
                  ],
                ),
                color: Colors.blue.shade50,
              ),
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}

class Accepted extends StatefulWidget {
  const Accepted({super.key});

  @override
  State<Accepted> createState() => _AcceptedState();
}

class _AcceptedState extends State<Accepted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MechStatusComplete(),));
          },
            child: Card(
              child: Padding(
                padding:EdgeInsets.all(8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("Assets/ICon.jfif"),radius:35.r,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text("Name",style: TextStyle(fontSize: 18.sp),)
                      ],
                    ),
                    Column(
                      children: [
                        Text("Fuel leaking",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500)),
                        Text("Date",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500)),
                        Text("Time",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500)),
                        Text("Place",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500))
                      ],
                    ),
                    Container(decoration: BoxDecoration(color: Colors.red.shade700,borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Payment Pending",style: TextStyle(color: Colors.white,fontSize: 10.sp,fontWeight: FontWeight.w500),),
                      ),
                    )
                  ],
                ),
              ),
              color: Colors.blue.shade50,
            ),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
