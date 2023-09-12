import 'package:flutter/material.dart';
class CarPartsScreen extends StatefulWidget {
  const CarPartsScreen({super.key});

  @override
  State<CarPartsScreen> createState() => _CarPartsScreenState();
}

class _CarPartsScreenState extends State<CarPartsScreen> {
  List<String>image_parts=
  [
     "assets/images/icons/part_01 1.png",
    "assets/images/icons/part_02.png",
    "assets/images/icons/part_03.png",
    "assets/images/icons/part_01 1.png",
    "assets/images/icons/part_02.png",
    "assets/images/icons/part_03.png",
    "assets/images/icons/part_01 1.png",
    "assets/images/icons/part_02.png",
    "assets/images/icons/part_03.png",
    "assets/images/icons/part_01 1.png",
    "assets/images/icons/part_02.png",
    "assets/images/icons/part_03.png",
    "assets/images/icons/part_01 1.png",
    "assets/images/icons/part_02.png",
    "assets/images/icons/part_03.png",
    "assets/images/icons/part_01 1.png",
    "assets/images/icons/part_02.png",
    "assets/images/icons/part_03.png",

  ];
    List<String>names_parts=
        [
          "Car Seats",
           "Door Mirror",
          "Car Engine",
          "Car Seats",
          "Door Mirror",
          "Car Engine",
          "Car Seats",
          "Door Mirror",
          "Car Engine",
          "Car Seats",
          "Door Mirror",
          "Car Engine",
          "Car Seats",
          "Door Mirror",
          "Car Engine",
          "Car Seats",
          "Door Mirror",
          "Car Engine",

        ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.grey[300],
    appBar: AppBar(
       backgroundColor: Colors.grey[300],
      leading: Icon(Icons.arrow_back_ios, color: Colors.black,),

    ),
           body: SingleChildScrollView(
             child: Column(
               children: [
                 Container(
                    height: 330,
                   child: Card(
                     color: Colors.white,
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                     elevation: 5,
                     margin: EdgeInsets.all(25),
                     child: Column(
                       children: [
                        Image.asset("assets/images/icons/CarParts01.png"),
                       ],
                     ),
                   ),

                 ),
                 Align(
                     alignment: Alignment.centerLeft,
                   child: Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Text("Auto parts", style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20
                     ),),
                   ),
                 ),

                   Container(

                     decoration: BoxDecoration(
                         color: Colors.grey[300]
                     ),
                     width: MediaQuery
                         .of(context)
                         .size
                         .width,
                     height: MediaQuery
                         .of(context)
                         .size
                         .height *0.40,

                     child: GridView.builder(
                       shrinkWrap: true,
                       // physics: NeverScrollableScrollPhysics(),
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                       crossAxisCount: 3,
                       crossAxisSpacing:1,
                       mainAxisSpacing: 1,
                     ),
                       itemCount: image_parts.length,
                         itemBuilder:(context, index) {
                           return Card(
                              elevation: 5,

                             child: Container(
                               height: MediaQuery.of(context).size.height,
                             child: Column(

                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Image.asset(image_parts[index],
                                   width: MediaQuery.of(context).size.width * 0.15, // height:MediaQuery.of(context).size.height*0.2,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.symmetric(horizontal: 5),
                                   child: Text( names_parts[index] , style: TextStyle(fontSize:11, fontWeight: FontWeight.bold),),
                                 ),
                               ],
                             ),

                             ),
                           );
                         },


                     ),
                   )

               ],
             ),
           ),






    );
  }
}
