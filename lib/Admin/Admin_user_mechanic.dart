import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Admin_addMech.dart';
import 'Admin_addUser.dart';


class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: EdgeInsets.all(8.w),
                child: CircleAvatar(radius: 20.r,
                  backgroundImage: AssetImage("lady.jpg"),
                ),
              ),
              bottom: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.indigoAccent,
                ),
                tabs: [
                  Tab(
                    child: Text(
                      'User',
                      style: TextStyle(
                        // color: Colors.white,
                        fontSize: 16.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0.h,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Mechanic',
                      style: TextStyle(
                        // color: Colors.white,
                        fontSize: 16.sp,

                        fontWeight: FontWeight.w500,
                        height: 0.h,
                      ),
                    ),
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [
                User(),
                Mechanic(),
              ],
            ),
          ),
        ));
  }
}

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("User").snapshots(),
          builder: (context, snapshot) {
            if(snapshot.connectionState==ConnectionState.waiting)return Center(child: CircularProgressIndicator());
            else if(snapshot.hasError) return Text("Error ${snapshot.error}");
            final user = snapshot.data?.docs??[];
            return   ListView.builder(
              itemBuilder: (context, index) {
                var doc=user[index];
                final _data = doc.data() as Map<String,dynamic>;

                return ListTile(
                  title: Text(
                    _data["username"]??"",
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18.sp),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("man.jpg"),
                    radius: 26.r,
                  ),
                  subtitle: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_data["location"]??"", style: TextStyle(fontSize: 16.sp),),
                          Text(_data["phone"]??"", style: TextStyle(fontSize: 16.sp),),
                          Text(_data["email"]??"", style: TextStyle(fontSize: 16.sp),)
                        ],
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminAddUser(id:doc.id),
                        ));
                  },
                  selectedTileColor: Colors.indigo,
                );
              },
              itemCount: user.length,
            );
          },

        ));
  }
}

class Mechanic extends StatefulWidget {
  const Mechanic({super.key});

  @override
  State<Mechanic> createState() => _MechanicState();
}

class _MechanicState extends State<Mechanic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:StreamBuilder(
          stream: FirebaseFirestore.instance.collection("mechanic").snapshots(),
          builder: (context, snapshot) {
            if(snapshot.connectionState==ConnectionState.waiting) return Center(child: CircularProgressIndicator());
            else if (snapshot.hasError) return Text("Error ${snapshot.error}");
            final mech=snapshot.data?.docs??[];
            return     ListView.builder(
              itemBuilder: (context, index) {
                var doc = mech[index];
                final _data = doc.data() as Map <String,dynamic>;
                return ListTile(
                  title: Text(_data["mechname"] ?? ""
                    ,
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18.sp),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("man.jpg"),
                    radius: 26,
                  ),
                  subtitle: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_data["mechphone"] ?? "", style: TextStyle(fontSize: 16.sp),),
                          Text("Service", style: TextStyle(fontSize: 16.sp),)
                        ],
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminAddMech(id:doc.id),
                        ));
                  },
                  selectedTileColor: Colors.indigo,
                );
              },
              itemCount: mech.length,
            );
          },
        )

    );
  }
}
