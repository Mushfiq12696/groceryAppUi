import 'dart:async';

import 'package:flutter/material.dart';
import 'package:online_shop/Screens/custom_nav_bar.dart';
import 'package:online_shop/Screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isVisible = true;

  @override
  void initState() {
    // super.initState();
    Future.delayed(Duration(seconds: 3), () {
      isVisible = false;
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => CustomBottomNavBar()), (route) => false);
    });
  }

  Widget build(BuildContext context) {
    /*Timer(
      
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen())));*/
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //color: Colors.deepPurpleAccent.withOpacity(0.2),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/delivary.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Visibility(
              visible: isVisible,
              child: Container(
                padding: EdgeInsets.all(10),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CircularProgressIndicator(
                  color: Colors.amberAccent,
                  strokeWidth: 15,
                  backgroundColor: Colors.lightBlue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
