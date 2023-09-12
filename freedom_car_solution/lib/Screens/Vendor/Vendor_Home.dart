import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Screens/Vendor/VendorAddProduct.dart';
import 'package:freedom_car_solution/Utils/colors.dart';
import 'package:freedom_car_solution/Utils/utils.dart';
// import 'package:vendor_freedomcar/Utils/colors.dart';
// import 'package:vendor_freedomcar/Utils/utils.dart';
class Vendor_Home extends StatefulWidget {
  const Vendor_Home({super.key});

  @override
  State<Vendor_Home> createState() => _Vendor_HomeState();
}

class _Vendor_HomeState extends State<Vendor_Home> {
    List<String>image=[
      "assets/images/icons/CarParts01.png",
      "assets/images/icons/CarParts01.png",
      "assets/images/icons/CarParts01.png",
      "assets/images/icons/CarParts01.png",
      "assets/images/icons/CarParts01.png",
      "assets/images/icons/CarParts01.png",
      "assets/images/icons/CarParts01.png",
      "assets/images/icons/CarParts01.png",


    ];
      List<String>name=[
        "Maruti Ritz",
        "Tata Tiago",
        "Maruti Ritz",
        "Tata Tiago",
        "Maruti Ritz",
        "Tata Tiago",
        "Maruti Ritz",
        "Tata Tiago",


      ];
    List<String>name_Price=[
      "Price: RS 10.45 lakh",
      "Price: RS 10.45 lakh",
      "Price: RS 10.45 lakh",
      "Price: RS 10.45 lakh",
      "Price: RS 10.45 lakh",
      "Price: RS 10.45 lakh",
      "Price: RS 10.45 lakh",
      "Price: RS 10.45 lakh",

    ];
  @override
  Widget build(BuildContext context) {
    FrameSize.init(context: context);
    return Scaffold(
     body: SingleChildScrollView(
       child: Column(
         children: [
           Container(
             width: FrameSize.screenWidth,
             height: FrameSize.screenHeight * 0.20,
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
                           Text('All Products', style: TextStyle(
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

                                 hintText: 'Search Products',

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

           Container(

              // color: Colors.white,
             height: FrameSize.screenHeight * 0.80,
             width: FrameSize.screenWidth ,
             child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
               mainAxisSpacing: 5,
               crossAxisSpacing: 1,


             ),
                  itemCount: image.length,
                 itemBuilder:(context, index) {
               return Card(
                  color: Colors.white,
                  elevation: 5,
                   child: Column(
                     children: [

                       Container(

                         height: FrameSize.screenHeight * 0.20,
                         width: FrameSize.screenWidth * 0.4,
                         color: Colors.grey[200],
                         child:
                          Column(
                             mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(image[index]),
                               Text(name[index], style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 15
                               ),),
                              Text(name_Price[index], style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),),

                            ],
                          ),
                         
                       ),



                     ],
                   ),
               );
             },),
             
           ),





         ],


       ),
     ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: AppColors.primaryAppColor,),
        backgroundColor: Colors.white,
        onPressed: () {
             Navigator.push(context,  MaterialPageRoute(builder: (context) => VendorAddProduct(),));
        },
      ),


    );
  }
}
