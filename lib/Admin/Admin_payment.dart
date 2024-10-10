import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminPayment extends StatefulWidget {
  const AdminPayment({super.key});

  @override
  State<AdminPayment> createState() => _AdminPaymentState();
}

class _AdminPaymentState extends State<AdminPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue.shade50,
        leading:  Padding(
        padding: const EdgeInsets.all(10),
        child: CircleAvatar(
          backgroundImage: AssetImage("lady.jpg"),
        ),
      ),),
        backgroundColor: Colors.blue.shade50,
        body: ListView.builder(itemBuilder: (context, index) {
          return Column(
              children: [

                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: InkWell(
                    child: Container(
                      height: 90.h,
                      width: 325.w,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "   Name",
                                    style: TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Text("23/08/24   ")
                              ],
                            ),
                          ), Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rs 5455"),
                                    Text("Service"),
                                    Text("Mechanic Name"),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 10.h,
                )
              ]
          );
        },
          itemCount: 7,
        )
    );
  }
}

