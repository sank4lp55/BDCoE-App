import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:bdcoe_app/screens/authorization/main_login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedSplashScreen(
          splash: 'assets/images/bdcoe_logo.png',
          splashIconSize: MediaQuery.of(context).size.width / 2,
          nextScreen: const MainLoginScreen(),
        ),
      ),
    );
  }
}
