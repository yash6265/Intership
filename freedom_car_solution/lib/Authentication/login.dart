import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Authentication/otp.dart';
import 'package:freedom_car_solution/Utils/colors.dart';
import 'package:freedom_car_solution/Utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  void _validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpScreen()));
    }
  }

  String? _validatePhoneNumber(String? value) {
    if (value!.isEmpty) {
      return 'Phone number is required';
    } else if (value.length!= 10) {
      return 'Phone number must be 10 digits';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    FrameSize.init(context: context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/icons/img.png",
                scale: FrameSize.screenWidth * 0.01,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: AppColors.primaryAppColor,
              ),
            ),
            SizedBox(height: FrameSize.screenHeight * 0.09),
            Text(
              "Login/Register",
              style: TextStyle(
                color: AppColors.secondoryAppColor,
                fontSize: FrameSize.screenWidth * 0.05,
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Center(
                child: Container(
                  height: 50,
                  width: FrameSize.screenWidth * 0.8,
                  decoration:BoxDecoration(
                   // borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2,vertical:2),
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        controller: _phoneNumberController,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.grey,fontSize: 15),
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          prefixIcon: Icon(Icons.phone,color: Colors.black38,size: 15,),
                          hintText: 'Contact No. ',
                          hintStyle: TextStyle(color: Colors.black38,fontSize: 17),
                        ),
                        validator: _validatePhoneNumber,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          //  SizedBox(height: 5),
            Center(
              child: InkWell(
                onTap: _validateAndSubmit,
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
                    child: Text("Continue",style: TextStyle(color: Colors.white),),
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
