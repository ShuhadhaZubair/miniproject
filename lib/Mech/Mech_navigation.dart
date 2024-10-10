import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Mech_home.dart';
import 'Mech_rating.dart';
import 'Mech_service.dart';

class MechNavigation extends StatefulWidget {
  const MechNavigation({super.key});

  @override
  State<MechNavigation> createState() => _MechNavigationState();
}

class _MechNavigationState extends State<MechNavigation> {
  int _selectedIndex = 0;

  static const List<dynamic> _widgetOptions = [
    MechHome(),
    MechService(),
    MechRating()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.person_add_alt),
                label: 'Request',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.miscellaneous_services_rounded),
                label: 'Service',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.star_half),
                label: 'Rating',
                backgroundColor: Colors.white),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.black,
          iconSize: 25.sp,
          onTap: _onItemTapped,
          elevation: 2),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}


