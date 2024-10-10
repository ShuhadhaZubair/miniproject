import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MechService extends StatefulWidget {
  const MechService({super.key});

  @override
  State<MechService> createState() => _MechServiceState();
}

class _MechServiceState extends State<MechService> {
  void _showAlertDialog(BuildContext context) {
    // Set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.blue.shade100,
      title: Text("Add Service"),
      content: SizedBox(height: 100, child: TextField()),
      actions: [
        Container(
          decoration: BoxDecoration(
              color: Colors.blue.shade800,
              borderRadius: BorderRadius.circular(10.r)),
          child:
          TextButton(
            child: Center(child: Text("Add",style: TextStyle(color: Colors.white),)),
            onPressed: () {
              print("pressed");
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
        )

      ],
    );

    // Show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Center(
          child: Icon(Icons.add),
        ),
        shape: CircleBorder(side: BorderSide(color: Colors.black)),
        onPressed: () {
          _showAlertDialog(context);
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Text("Service"),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(20),
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Container(
                height: 270.h,
                width: 250.w,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 23),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Tyre puncture service"),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Text("Engine service"),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Text("A/C service"),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Text("Electric service"),
                                SizedBox(
                                  height: 30.h,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.delete, size: 15.sp),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.delete, size: 15.sp),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.delete, size: 15.sp),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.delete, size: 15.sp),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                              ],
                            ),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
