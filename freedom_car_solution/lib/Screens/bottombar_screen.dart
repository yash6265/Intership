import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Screens/CarSelectName.dart';
import 'package:freedom_car_solution/Screens/SelectCarScreen.dart';
import 'package:freedom_car_solution/Screens/cart_screen.dart';
import 'package:freedom_car_solution/Screens/my_profile_screen.dart';
import 'package:freedom_car_solution/Utils/colors.dart';
import 'package:freedom_car_solution/Utils/utils.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'Account/AccountMainPage_screen.dart';
import 'Account/Refers&earn.dart';
import 'Account/sos_screen.dart';
import 'HomePage.dart';
import 'accessories_screen.dart';
import 'help_&_support_screen.dart';
class BottombarScreen extends StatefulWidget {
  const BottombarScreen({super.key});

  @override
  State<BottombarScreen> createState() => _BottombarScreenState();
}
int selectedindex = 2;
class _BottombarScreenState extends State<BottombarScreen> {
  void ontaped(int index){
    setState(() {
      selectedindex  = index;
    });
  }
  static  List<Widget> pages = <Widget>[
    SelectCarScreen(),
    AccessoriesScreen(),
    HomeScreen(),
    CartProductScreen(),
    MyProfile(),
    // MyProfile(),
  ];

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
  );
 // SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.pinned;
  EdgeInsets padding = const EdgeInsets.all(12);
 // int _selectedItemPosition = selectedindex;
  SnakeShape snakeShape = SnakeShape.indicator;
  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;
  Color selectedColor = AppColors.primaryAppColor;
  Color unselectedColor = AppColors.primaryAppColor.withOpacity(0.5);



  @override
  Widget build(BuildContext context) {
    FrameSize.init(context: context);
    return Scaffold(
      body: pages.elementAt(selectedindex),
      bottomNavigationBar: SnakeNavigationBar.color(
        height: 35,
     //   behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: bottomBarShape,
        padding: padding,
        snakeViewColor: selectedColor,
        selectedItemColor:
        snakeShape == SnakeShape.indicator ? selectedColor : null,
        unselectedItemColor: unselectedColor,
        showUnselectedLabels: showUnselectedLabels,
        showSelectedLabels: showSelectedLabels,
        currentIndex: selectedindex,
        onTap: ontaped,
        items:  [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.car_detailed), label: 'tickets'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_sharp), label: 'calendar'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart), label: 'microphone'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp), label: 'search')
        ],
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
      ),

    );
  }
}