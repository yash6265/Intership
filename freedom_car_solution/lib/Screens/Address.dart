import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Utils/utils.dart';

import '../Utils/colors.dart';
class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {

  @override
  Widget build(BuildContext context) {
    FrameSize.init(context: context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Icon(Icons.arrow_back_ios, color: Colors.black,),
      ),
       backgroundColor: Colors.grey[300],

          body: SingleChildScrollView(
            child: Column(
              children: [
            Padding(
            padding: const EdgeInsets.all(8.0),
      child:
      Container(
        height: FrameSize.screenHeight * 0.21,
        width: FrameSize.screenWidth * 0.9,
        decoration: BoxDecoration(
              boxShadow:[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(0, 2),
                ),],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
        ),
        child:Padding(
            padding:EdgeInsets.all(FrameSize.screenWidth * 0.04),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: FrameSize.screenHeight * 0.12,
                      width: FrameSize.screenWidth * 0.28,
                      color: Colors.grey[200],
                      child: Image.asset("assets/images/icons/CarParts01.png"),
                    ),
                    SizedBox(width: FrameSize.screenWidth * 0.02,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: FrameSize.screenHeight * 0.05,
                          width: FrameSize.screenWidth * 0.45,
                          child: Text('Swift Car', style: TextStyle(fontSize: FrameSize.screenWidth*0.05,fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Red Colour',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: FrameSize.screenHeight* 0.005,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Rs 1.5 Cr',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: FrameSize.screenHeight* 0.015,),

              ],


            ),
        ) ,
              ),
    ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    child: Container(
                      height: FrameSize.screenHeight * 0.21,
                      width: FrameSize.screenWidth * 0.9,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ADDRESS",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

                            Text("John", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),

               SizedBox(height: 60),
                            Row(
                              children: [
                                 Icon(Icons.delete),

                                TextButton(onPressed: () {}, child:
                                Text("Remove", style: TextStyle(
                                  color: Colors.black,
                                ),)),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.35),
                                Icon(Icons.edit),
                                TextButton(onPressed: () {}, child:Text("Edit", style: TextStyle(
                                  color: Colors.black,
                                ),)),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),

                  ),
                ),

                 Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Container(
                     height: FrameSize.screenHeight * 0.10,
                     width: FrameSize.screenWidth * 0.9,
                     decoration: BoxDecoration(
                       color: Colors.white
                     ),
                     child: Center(
                       child: TextField(
                         textAlign: TextAlign.center,
                         decoration: InputDecoration(
                           hintText: "Add new Address",
                           hintStyle: TextStyle(
                             color: Colors.grey
                           ),
                           enabledBorder: InputBorder.none,
                           focusedBorder: InputBorder.none
                         ),
                       ),
                     ),
                   ),
                        ),
                 SizedBox(
                   height: 20,
                 ),

                SizedBox(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.06,
                    child: ElevatedButton(

                      onPressed: () {}, child: Text("Place Order",style: TextStyle(color: Colors.white,),),

                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryAppColor
                      ),


                    )


                )

                     ],
                   ),
          ),
    );
  }
}
