import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Admin_notification.dart';
import 'Admin_payment.dart';
import 'Admin_user_mechanic.dart';



class Admin_navigation extends StatefulWidget {
  const Admin_navigation({super.key});

  @override
  State<Admin_navigation> createState() => _Admin_navigationState();
}

class _Admin_navigationState extends State<Admin_navigation> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    AdminHome(),
    AdminPayment(),
    AdminNotification()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment),
              label: 'Payment',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Notification',
              backgroundColor: Colors.white),

        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.black,
        iconSize: 25.sp,
        onTap: _onItemTapped,
        elevation: 2.sp,
      ),
    );
  }
}
