import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MechStatusReject extends StatefulWidget {
  const MechStatusReject({super.key});

  @override
  State<MechStatusReject> createState() => _MechStatusRejectState();
}

class _MechStatusRejectState extends State<MechStatusReject> {
  String _selectedValue = 'Completed';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Icon(Icons.arrow_back_ios),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 5, bottom: 5),
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
                    )
                  ],
                ),
              ),
              color: Colors.blue.shade50,
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Add Status",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: ListTile(
                  title: Text('Completed'),
                  leading: Radio<String>(
                    value: 'Completed',
                    groupValue: _selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('Not Completed'),
                  leading: Radio<String>(
                    value: 'Not Complete',
                    groupValue: _selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: TextField(maxLines: 3,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r)),

                ),
              ),
            ),
          ),
          SizedBox(height: 30.h,),
          InkWell(
            child: Container(
              height: 50.h,
              width: 150.w,
              decoration: BoxDecoration(color: Colors.blue.shade900, borderRadius: BorderRadius.circular(10.r)),
              child: Center(child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
