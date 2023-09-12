import 'package:flutter/material.dart';

import '../../Utils/colors.dart';
import '../../Utils/utils.dart';
class VendorHistory extends StatefulWidget {
  const VendorHistory({super.key});

  @override
  State<VendorHistory> createState() => _VendorHistoryState();
}

class _VendorHistoryState extends State<VendorHistory> {
  @override
  Widget build(BuildContext context) {
    FrameSize.init(context: context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: FrameSize.screenWidth,
              height: FrameSize.screenHeight * 0.22,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  color: AppColors.primaryAppColor
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [

                            Icon(Icons.arrow_back_ios_new,color: Colors.white,),

                            Text('History', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white
                            ),),
                            Icon(Icons.filter_alt_outlined,color: Colors.white,),

                          ],
                        ),
                        SizedBox(height:30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 2),
                          child: Center(
                            child: Container(
                              height: 35,
                              width: FrameSize.screenWidth * 0.95,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
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
                              child: TextField(
                                keyboardType: TextInputType.name,
                                style: TextStyle(color: Colors.grey,fontSize: 15),
                                decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  prefixIcon: Icon(Icons.search,color: Colors.black38,size: 15,),
                                  hintText: 'Search Order',
                                  hintStyle: TextStyle(color: Colors.black38,fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),


                  ],
                ),
              ),
            ),

            SizedBox(height: FrameSize.screenHeight*0.02),
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

            SizedBox(height: FrameSize.screenHeight*0.02),
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

            SizedBox(height: FrameSize.screenHeight*0.02),
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

            SizedBox(height: FrameSize.screenHeight*0.02),
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
            SizedBox(height: FrameSize.screenHeight*0.02),
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
            SizedBox(height: FrameSize.screenHeight*0.02),
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

          ],
        ),
      ),
    );
  }
}
