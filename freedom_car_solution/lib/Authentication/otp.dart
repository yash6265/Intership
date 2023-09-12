import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Screens/HomePage.dart';
import 'package:freedom_car_solution/Screens/bottombar_screen.dart';
import 'package:freedom_car_solution/Utils/colors.dart';

import '../Utils/utils.dart';
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.55,
              width: MediaQuery.of(context).size.width,

              child:Image.asset("assets/images/icons/img.png",
                scale:FrameSize.screenWidth * 0.01,
              ),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  color: AppColors.primaryAppColor
              ),

            ),
            SizedBox(height: 70),
            Text("Enter OTP Here ", style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: FrameSize.screenHeight * 0.055,
                  width: FrameSize.screenWidth * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                       textAlign: TextAlign.center,
                      onChanged: (value){
                        if(value.length==1)
                        {
                          FocusScope.of(context).nextFocus();
                        }
                      }

                  ),
                ),
                SizedBox(
                  width: FrameSize.screenWidth * 0.05,
                ),
                Container(
                  height: FrameSize.screenHeight * 0.055,
                  width: FrameSize.screenWidth * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      onChanged: (value){
                        if(value.length==1)
                        {
                          FocusScope.of(context).nextFocus();
                        }
                      }

                  ),
                ),
                SizedBox(
                  width: FrameSize.screenWidth * 0.05,
                ),
                Container(
                  height: FrameSize.screenHeight * 0.055,
                  width: FrameSize.screenWidth * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      onChanged: (value){
                        if(value.length==1)
                        {
                          FocusScope.of(context).nextFocus();
                        }
                      }

                  ),
                ),
                SizedBox(
                  width: FrameSize.screenWidth * 0.05,
                ),
                Container(
                  height: FrameSize.screenHeight * 0.055,
                  width: FrameSize.screenWidth * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                       onChanged: (value){
                          if(value.length==1)
                            {
                              FocusScope.of(context).nextFocus();
                            }
                       }
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: InkWell(
                onTap:  (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>BottombarScreen()));},
                child: Container(
                    height: 50,
                    width:FrameSize.screenWidth * 0.8,
                    decoration:BoxDecoration(
                      color: AppColors.primaryAppColor,
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child:Center(
                      child: Text("Verify",style: TextStyle(color: Colors.white),),
                    )
                ),
              ),
            ),
          ],
        ),
      ),





    );
  }
}
