import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

final navigationKey = GlobalKey<CurvedNavigationBarState>();
int index = 0;

curvedNavigationBar() {
  return CurvedNavigationBar(
    key: navigationKey,
    index: index,
    backgroundColor: Colors.transparent,
    color: Colors.blueAccent,
    animationCurve: Curves.easeInOut,
    animationDuration: const Duration(milliseconds: 300),
    onTap: (index) {},
    items: const [
      Icon(
        Icons.home,
        size: 35,
        color: Colors.white,
      ),
      Icon(
        Icons.event,
        size: 35,
        color: Colors.white,
      ),
      Icon(
        Icons.card_membership,
        size: 35,
        color: Colors.white,
      ),
      Icon(
        Icons.account_circle,
        size: 35,
        color: Colors.white,
      ),
    ],
  );
}
