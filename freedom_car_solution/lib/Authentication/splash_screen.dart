import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Authentication/login.dart';
import 'dart:async';
import '../Screens/HomePage.dart';
import '../Screens/bottombar_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
         Duration(seconds:2),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>LoginScreen()))
    );
  }
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Container(child: Image.asset("assets/images/splash/SplashScreen.png",)

          ),
        ),
      ),
    );
  }
}
