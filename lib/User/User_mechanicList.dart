import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserMechaniclist extends StatefulWidget {
  const UserMechaniclist({super.key});

  @override
  State<UserMechaniclist> createState() => _UserMechaniclistState();
}

class _UserMechaniclistState extends State<UserMechaniclist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        leading: Padding(
          padding: EdgeInsets.all(10.w),
          child: InkWell(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => MechEditProfile(),));
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
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 50.w, right: 50.w, top: 20.h, bottom: 20.h),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r))),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) =>  MechAcceptReject(),));
                    },
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 5, bottom: 5),
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
                            padding: const EdgeInsets.only(
                                right: 20, top: 5, bottom: 5),
                            child: Column(
                              children: [
                                Text("2+ years"),
                                Text("Fuel leaking"),
                                Container(
                                  height: 25.h,
                                  width: 85.w,
                                  decoration:
                                      BoxDecoration(color: Colors.green.shade800,borderRadius: BorderRadius.circular(15.r)),
                                  child: Center(child: Text("Available",style: TextStyle(color: Colors.white),)),
                                )
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
          )
        ],
      ),
    );
  }
}
