import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_field_platform/datetime_picker_field_platform.dart';
import 'package:project3/HomeProfile.dart';
import 'package:project3/labschedule.dart';
import 'package:project3/listview.dart';

class dash extends StatefulWidget {
  const dash({super.key});

  @override
  State<dash> createState() => _dashstate();
}

class _dashstate extends State<dash> {
  int currentPage = 0;
  final List<Widget> _pages = [
    dashboard(),
    jadwal(),
    item(),
    orang(),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewPadding = MediaQuery.of(context).viewPadding;
    double barHeight;

    return Scaffold(
      body: _pages[currentPage],
      bottomNavigationBar: CircleBottomNavigationBar(
        barBackgroundColor: Colors.white,
        barHeight: 60,
        initialSelection: currentPage,
        itemTextOff: viewPadding.bottom > 0 ? 0 : 1,
        itemTextOn: viewPadding.bottom > 0 ? 0 : 1,
        shadowAllowance: 0.0,
        circleSize: 50.0,
        blurShadowRadius: 20,
        circleColor: Colors.deepPurple.shade300,
        activeIconColor: Colors.white,
        inactiveIconColor: Colors.grey,
        tabs: getTabsData(),
        onTabChangedListener: (index) => setState(() => currentPage = index),
      ),
    );
  }
}

List<TabData> getTabsData() {
  return [
    TabData(
      icon: Ionicons.home_outline,
      iconSize: 25.0,
      title: 'Dashboard',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: Ionicons.calendar_outline,
      iconSize: 25,
      title: 'Lab Schedule',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: Ionicons.archive_outline,
      iconSize: 25,
      title: 'Item & Tools',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: Ionicons.person_outline,
      iconSize: 25,
      title: 'Profile',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
  ];
}

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Dashboard"),
        ),
      ),
    );
  }
}

class item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: schedule(),
        ),
      ),
    );
  }
}

class orang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: TamProfil(),
        ),
      ),
    );
  }
}
