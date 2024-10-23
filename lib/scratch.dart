import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniproject/user_mech.dart';

class Scratch extends StatefulWidget {
  const Scratch({super.key});

  @override
  State<Scratch> createState() => _ScratchState();
}

class _ScratchState extends State<Scratch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body:  Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => UserMech(),));
              },
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(

                      image: DecorationImage(
                        image: AssetImage("crw.jpg"), )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
