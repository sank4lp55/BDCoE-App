import 'package:bdcoe_app/screens/events_screen/event_screen.dart';
import 'package:bdcoe_app/screens/members_screen/members_screen.dart';
import 'package:bdcoe_app/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:bdcoe_app/utils/bottom_nav_bar.dart';

final screens = <Widget>[
  const HomeScreen(),
  const EventsScreen(),
  const MembersScreen(),
  const ProfileScreen(),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[index],
      bottomNavigationBar: curvedNavigationBar(),
    );
  }
}
