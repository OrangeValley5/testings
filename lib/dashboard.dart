import 'package:earnify/referral.dart';
import 'package:earnify/social.dart';
import 'package:flutter/material.dart';
import 'package:earnify/home.dart';
import 'package:earnify/profile.dart';

import 'colors.dart' as color;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int myIndex = 0;
  List<Widget> widgetList = const [Home(), Social(), Referral(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => {
          setState(() {
            myIndex = index;
          })
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Social',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Referrals',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        selectedItemColor: Colors.black, // Set selected item color
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true, // Set unselected item color
      ),
      body: IndexedStack(
        children: widgetList,
        index: myIndex,
      ),
    );
  }
}
