import 'dart:core';

import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Authentication/login.dart';
import 'package:freedom_car_solution/Screens/HomePage.dart';
import 'package:freedom_car_solution/Screens/cart_screen.dart';
import 'package:freedom_car_solution/Screens/help_&_support_screen.dart';
import 'package:freedom_car_solution/Utils/utils.dart';

import '../Utils/colors.dart';
import 'accessories_screen.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  List<String>listname =
  [
    " My Account",
    "Notification",
    "Setting",
    'About Us/Rate Us',
    "Help Center",
    'Terms & Condition',
    "Log Out",


  ];
  List<Icon>icon =
  [
    Icon(Icons.person, color: AppColors.primaryAppColor,),
    Icon(Icons.notifications, color: AppColors.primaryAppColor,),
    Icon(Icons.settings, color: AppColors.primaryAppColor,),
    Icon(Icons.star, color: AppColors.primaryAppColor,),
    Icon(Icons.question_mark,color: AppColors.primaryAppColor,),
    Icon(Icons.playlist_add_check,color: AppColors.primaryAppColor,),
    Icon(Icons.logout_outlined,color: AppColors.primaryAppColor,),

  ];
  static List<Widget> underProfileScreen =<Widget> [
    CartProductScreen(),
    HomeScreen(),
    CartProductScreen(),
    HomeScreen(),
    CartProductScreen(),
    HomeScreen(),
    CartProductScreen(),
  ];

  Widget _buildTiles(BuildContext context,root) {

    return  ListTile(
    leading: Image.asset(root.imageUrl),
    title: Text(root.title),
    onTap: () => Navigator.of(context).pushNamed(root.routeName),
    );
    children: root.children.map((e) => _buildTiles(context, e)).toList();
  }


  @override
  Widget build(BuildContext context) {
    FrameSize.init(context: context);
    return Scaffold(

      appBar:
      PreferredSize(child:
      AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_back_ios, color: Colors.white,)),
        title:
        Text("My Profile " , textAlign: TextAlign.center, style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),

        backgroundColor: AppColors.primaryAppColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),preferredSize: Size.fromHeight(60.0)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.person,color: Colors.grey,size: FrameSize.screenWidth * 0.2,),
              ),
            ),
            SizedBox(height: 40),

            Container(
              height:FrameSize.screenHeight * 0.55,
              width: FrameSize.screenWidth * 0.9,
              child: ListView.builder(
                itemCount: listname.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListTile(
                      tileColor: Colors.grey[200],
                      leading: icon[index],
                      trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,),
                      title: Text(listname[index],style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey),),
                      onTap: (){
                        index ==0 ? Navigator.push(context, MaterialPageRoute(builder: (context) => CartProductScreen(),)):
                        index ==1 ? Navigator.push(context, MaterialPageRoute(builder: (context) => AccessoriesScreen(),)):
                        index ==2 ? Navigator.push(context, MaterialPageRoute(builder: (context) => CartProductScreen(),)):
                        index ==3 ? Navigator.push(context, MaterialPageRoute(builder: (context) => CartProductScreen(),)):
                        index ==4 ? Navigator.push(context, MaterialPageRoute(builder: (context) => HelpAndSupport(),)):
                        index ==5 ? Navigator.push(context, MaterialPageRoute(builder: (context) => CartProductScreen(),)):
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));

                      },

                    ),
                  );

                },),
            )

          ],

        ),
      ),



    );
  }
}