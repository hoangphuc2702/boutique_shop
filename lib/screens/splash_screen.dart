import 'dart:async';
import 'package:boutique_shop/screens/home_screen.dart';
import 'package:boutique_shop/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/Splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),
    () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen(),
       ),
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("assets/images/logo.png"),
            fit: BoxFit.cover,
            opacity: 0.4,
          ),

        ),

      ),

    );
  }
}
