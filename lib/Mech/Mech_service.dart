import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MechService extends StatefulWidget {
  const MechService({super.key});

  @override
  State<MechService> createState() => _MechServiceState();
}

class _MechServiceState extends State<MechService> {
  var service= TextEditingController();

  String ?mech;


  Future<void> add_service() async{
    FirebaseFirestore.instance.collection("service").add({
      "service" : service.text,
      "mech_id": mech
    });

    print("service added");
    Navigator.of(context).pop();
  }
  Future<void> getdata() async{
    SharedPreferences data = await SharedPreferences.getInstance();
    mech = data.getString("mechid");
    print("$mech data collected");
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  void _showAlertDialog(BuildContext context) {
    // Set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.blue.shade100,
      title: Text("Add Service"),
      content: SizedBox(height: 100, child: TextField(
        controller: service,
      )),
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
              add_service(); // Close the dialog
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
                width: 270.w,
                decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance.collection("service").where("mech_id",isEqualTo: mech ).snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting)
                        return Center(child: CircularProgressIndicator());
                      else if (snapshot.hasError)
                        return Text("Error ${snapshot.error}");
                      final services = snapshot.data?.docs??[];
                      return    ListView.builder(itemBuilder: (context, index) {
                        var doc = services[index];
                        final _data = doc.data() as Map<String, dynamic>;
                       return Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 23),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(_data["service"]??"",style: TextStyle(fontSize: 17.sp),),
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
                                        onPressed: () {
                                          FirebaseFirestore.instance.collection("service").doc(doc.id).delete();
                                        },
                                        icon: Icon(Icons.delete, size: 22.sp),
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
                        );



                    },
                        itemCount: services.length,


                    );
  }
                  ),
                )),
          )
        ],
      ),
    );
  }
}
