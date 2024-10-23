import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserRequestmechaniclist extends StatefulWidget {
  const UserRequestmechaniclist({super.key});

  @override
  State<UserRequestmechaniclist> createState() => _UserRequestmechaniclistState();
}

class _UserRequestmechaniclistState extends State<UserRequestmechaniclist> {
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
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) =>  MechAcceptReject(),));
                    },
                    child: Card(color: Colors.blue.shade100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [

                              // SizedBox(
                              //   height: 10.h,
                              // ),
                              Text("Name"),
                              Text("Date"),
                              Text("Time"),
                              Text("Fuel Leaking")
                            ],
                          ),


                                Container(
                                  height: 25.h,
                                  width: 85.w,
                                  decoration:
                                  BoxDecoration(color: Colors.green.shade800,borderRadius: BorderRadius.circular(15.r)),
                                  child: Center(child: Text("Approved",style: TextStyle(color: Colors.white),)),
                                )
                              ],
                            ),


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
