import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'User_mechanicDetails.dart';
import 'User_profile.dart';

class UserMechaniclist extends StatefulWidget {
  const UserMechaniclist({super.key});

  @override
  State<UserMechaniclist> createState() => _UserMechaniclistState();
}

class _UserMechaniclistState extends State<UserMechaniclist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
            child: StreamBuilder(
    stream: FirebaseFirestore.instance.collection("mechanic").where("statuskey", isEqualTo: 1).snapshots(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting)
        return Center(child: CircularProgressIndicator());
      else if (snapshot.hasError) return Text("Error ${snapshot.error}");
      final mech = snapshot.data?.docs ?? [];
      return ListView.builder(
        itemBuilder: (context, index) {
          var doc = mech[index];
          final _data = doc.data() as Map<String, dynamic>;

          return Padding(
            padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  UserMechanicdetails(),));
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
                          Text(_data["mechname"]??"")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20, top: 5, bottom: 5),
                      child: Column(
                        children: [
                          Text(_data["mechworkexp"]??""),
                          Text("Fuel leaking"),
                          Container(
                            height: 25.h,
                            width: 85.w,
                            decoration:
                            BoxDecoration(color: Colors.green.shade800,
                                borderRadius: BorderRadius.circular(15.r)),
                            child: Center(child: Text("Available",
                              style: TextStyle(color: Colors.white),)),
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
        itemCount: mech.length,
      );
    }
            ),
          )
        ],
      ),
    );
  }
}
