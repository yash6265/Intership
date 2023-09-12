import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Screens/PaymentScreen.dart';
import 'package:freedom_car_solution/Utils/colors.dart';
import 'package:freedom_car_solution/Utils/utils.dart';

class CartProductScreen extends StatefulWidget {
  const CartProductScreen({Key? key}) : super(key: key);

  @override
  State<CartProductScreen> createState() => _CartProductScreenState();
}

class _CartProductScreenState extends State<CartProductScreen> {

  List<String> images_cartproduct = [
    'assets/images/icons/custom_services_01 1.png',
    'assets/images/icons/custom_services_02 1.png',
    'assets/images/icons/custom_services_03 1.png',
    'assets/images/icons/custom_services_03 1.png',
    'assets/images/icons/custom_services_03 1.png',
    'assets/images/icons/custom_services_03 1.png',

  ];



  @override
  Widget build(BuildContext context) {
    FrameSize.init(context: context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: FrameSize.screenHeight * 0.1,
            width: FrameSize.screenWidth,
            decoration: BoxDecoration(
              color: AppColors.primaryAppColor,
            ),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(CupertinoIcons.back,color: Colors.white,),
                  Text('Cart Products',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: FrameSize.screenWidth * 0.05),),
                  Icon(Icons.menu,color: Colors.white,),
                ],
              ),
            ),
          ),
          Container(
            height: FrameSize.screenHeight * 0.82,
              child:
              ListView.builder(
                  physics: const ScrollPhysics(),
                  itemCount: images_cartproduct.length,
                  itemBuilder: (BuildContext,i){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
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
                                    child: Image.asset(images_cartproduct[i]),
                                  ),
                                  SizedBox(width: FrameSize.screenWidth * 0.02,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: FrameSize.screenHeight * 0.05,
                                        width: FrameSize.screenWidth * 0.45,
                                        child: Text('Product Title', style: TextStyle(fontSize: FrameSize.screenWidth*0.05,fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Price:',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),Text(
                                            'Rs.779',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: FrameSize.screenHeight* 0.005,),
                                      const Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Quantity:',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),Text(
                                            '5',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: FrameSize.screenHeight* 0.015,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: FrameSize.screenHeight * 0.035,
                                    width: FrameSize.screenWidth * 0.25,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow:[
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 7,
                                          offset: const Offset(0, 2),
                                        ),],
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Delete',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: FrameSize.screenHeight * 0.035,
                                    width: FrameSize.screenWidth * 0.25,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow:[
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 7,
                                          offset: const Offset(0, 2),
                                        ),],
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Review',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen()));
                                    },
                                    child: Container(
                                      height: FrameSize.screenHeight * 0.035,
                                      width: FrameSize.screenWidth * 0.25,
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryAppColor,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow:[
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 1,
                                            blurRadius: 7,
                                            offset: const Offset(0, 2),
                                          ),],
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Buy Now',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ) ,
                      ),
                    );
                  }),
            // ListView.builder(itemBuilder: (BuildContext, i){
              //   return Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Container(
              //       width: FrameSize.screenWidth,
              //       height: FrameSize.screenHeight * 0.2,
              //       decoration: BoxDecoration(
              //         color: Colors.grey[200],
              //         borderRadius: BorderRadius.circular(15),
              //       ),
              //       child: Row(
              //         children: [
              //           Container(
              //             height: ,
              //             child: ,
              //           ),
              //         ],
              //       ),
              //     ),
              //   );
              // })
          ),
        ],
      ),
    );
  }
}
