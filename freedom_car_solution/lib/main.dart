import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Authentication/login.dart';
import 'package:freedom_car_solution/Authentication/splash_screen.dart';
import 'package:freedom_car_solution/Screens/AboutUs.dart';
import 'package:freedom_car_solution/Screens/CarParts.dart';
import 'package:freedom_car_solution/Screens/CarSelectName.dart';
import 'package:freedom_car_solution/Screens/PaymentScreen.dart';
import 'package:freedom_car_solution/Screens/SelectCarScreen.dart';
import 'package:freedom_car_solution/Screens/Vendor/VendorHistory.dart';
import 'package:freedom_car_solution/Screens/Vendor/VendorMyOrder.dart';
import 'package:freedom_car_solution/Screens/Vendor/VendorProfile.dart';
import 'package:freedom_car_solution/Screens/Vendor/Vendor_Home.dart';
import 'package:freedom_car_solution/Screens/bottombar_screen.dart';
import 'package:freedom_car_solution/Screens/my_profile_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Freedom_automobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Vendor_Home(),
    );
  }
}
