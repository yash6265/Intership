import 'package:flutter/material.dart';

import '../Utils/colors.dart';
import '../Utils/utils.dart';
 class PaymentScreen extends StatefulWidget {
   const PaymentScreen({super.key});

   @override
   State<PaymentScreen> createState() => _PaymentScreenState();
 }

 class _PaymentScreenState extends State<PaymentScreen> {

   List<String>listname =
   [
     "Credit Card",
     "Apple Pay",
     "Phone pe",
     "Google Pay ",
     "Paytm",


   ];
   List<String>logoname =
   [
      "assets/images/icons/pay_1.png",
     "assets/images/icons/pay_1.png",
     "assets/images/icons/pay_1.png",
     "assets/images/icons/pay_1.png",
     "assets/images/icons/pay_1.png",

   ];

   @override
   Widget build(BuildContext context) {
     FrameSize.init(context: context);
     return Scaffold(

       appBar:
       PreferredSize(child:
       AppBar(
         centerTitle: true,
         automaticallyImplyLeading: true,
         leading: Icon(Icons.arrow_back_ios, color: Colors.white,),
         title:
         Text("Payment " , textAlign: TextAlign.center, style: TextStyle(
           color: Colors.white,
           fontSize: 20,
           fontWeight: FontWeight.bold,
         ),),

         backgroundColor: AppColors.primaryAppColor,
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30),
         ),



       ),preferredSize: Size.fromHeight(65.0)),

       body: Column(

         children: [
           SizedBox(height: 50),
           Container(
             height:FrameSize.screenHeight * 0.5,
             width: FrameSize.screenWidth * 0.9,
             child: ListView.builder(

               physics: NeverScrollableScrollPhysics(),
               itemCount: listname.length,
               itemBuilder: (context, index) {

                 return Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: ListTile(
                     tileColor: Colors.grey[200],
                     shape: RoundedRectangleBorder(

                         side: BorderSide(width:0),

                         borderRadius: BorderRadius.circular(15)
                     ),
                     leading:Container(
                       height: FrameSize.screenHeight * 0.05,
                        width: FrameSize.screenWidth * 0.1,
                        child:  Image.asset(logoname[index]),
                     ),

                     title: Container(

                         child: Text(listname[index],style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.grey),),




                     ),
                   ),
                 );

               },),



           ),
                SizedBox(height: 50),
                    Container(
                       color: AppColors.primaryAppColor,
                           width:double.infinity,
                          height: 0.5,
                    ),
                   SizedBox(height: 10),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Total", style: TextStyle(

                        fontSize:20,
                        fontWeight: FontWeight.bold
                      ),),


                       Text("Rs 15,00,000,0000", style: TextStyle(
                          fontWeight: FontWeight.w500,
                         fontSize: 15,
                       ),),
                    ],

                  ),
              SizedBox(height: 50),

             SizedBox(
               width: MediaQuery.of(context).size.width*0.8,
                 height: MediaQuery.of(context).size.height*0.06,
                 child: ElevatedButton(

                     onPressed: () {}, child: Text("Pay Now",style: TextStyle(color: Colors.white,),),

                   style: ElevatedButton.styleFrom(
                     backgroundColor: AppColors.primaryAppColor
                   ),


                 )


             )
         ],

       ),
     );
   }
 }
