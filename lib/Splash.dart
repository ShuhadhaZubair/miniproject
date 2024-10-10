import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniproject/user_mech.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        image: AssetImage("Mech.jfif"), )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
