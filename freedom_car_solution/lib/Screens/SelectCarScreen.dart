import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Utils/colors.dart';

import '../Authentication/login.dart';
import 'CarSelectName.dart';
import 'accessories_screen.dart';
import 'cart_screen.dart';

class SelectCarScreen extends StatefulWidget {
  @override
  _SelectCarScreenState createState() => _SelectCarScreenState();
}

class _SelectCarScreenState extends State<SelectCarScreen> {
  final TextEditingController _searchController = TextEditingController();


  List<String> images_Schedule = [
   "assets/images/icons/car_icon1.png",
    "assets/images/icons/car_icon2.png",
    "assets/images/icons/car_icon3.png",
    "assets/images/icons/car_icon4.png",
    "assets/images/icons/car_icon1.png",
    "assets/images/icons/car_icon2.png",
    "assets/images/icons/car_icon3.png",
    "assets/images/icons/car_icon4.png",
    "assets/images/icons/car_icon1.png",
    "assets/images/icons/car_icon2.png",
    "assets/images/icons/car_icon3.png",
    "assets/images/icons/car_icon4.png",
    "assets/images/icons/car_icon1.png",
    "assets/images/icons/car_icon2.png",
    "assets/images/icons/car_icon3.png",
    "assets/images/icons/car_icon4.png",
    "assets/images/icons/car_icon1.png",
    "assets/images/icons/car_icon2.png",
    "assets/images/icons/car_icon3.png",
    "assets/images/icons/car_icon4.png",
    "assets/images/icons/car_icon1.png",
    "assets/images/icons/car_icon2.png",
    "assets/images/icons/car_icon3.png",
    "assets/images/icons/car_icon4.png",
    "assets/images/icons/car_icon1.png",
    "assets/images/icons/car_icon2.png",
    "assets/images/icons/car_icon3.png",
    "assets/images/icons/car_icon4.png",
    "assets/images/icons/car_icon1.png",
    "assets/images/icons/car_icon2.png",
    "assets/images/icons/car_icon3.png",
    "assets/images/icons/car_icon4.png",

  ];



  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator BranddetailsWidget - FRAME
    return Scaffold(
          appBar:
           PreferredSize( preferredSize: Size.fromHeight(60.0),
          child: AppBar(
             centerTitle: true,
             automaticallyImplyLeading: true,
              leading: Icon(Icons.arrow_back_ios,color : Colors.white),
              title:
              Text("Select your Car" , textAlign: TextAlign.center, style: TextStyle(
                color: Colors.white,
                     fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),

           backgroundColor: AppColors.primaryAppColor,
           shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
           ),



         ),

           ),

                body: SingleChildScrollView(
                  child: Column(

        children: [
           SizedBox(height: 2),
    Padding(

      padding: const EdgeInsets.symmetric(horizontal:3,vertical:5),
      child: Container(
        height: 40,
        child: TextFormField(
        controller: _searchController,
          decoration: InputDecoration(
              hintText: "Search car ",
              suffixIcon: IconButton(onPressed: () {
                _searchController.clear();
              }, icon: const Icon(Icons.clear)),
              prefixIcon: IconButton(
                icon: const Icon(Icons.search, color: Colors.blue,),
                onPressed: () {},
              ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ),
              )
          ),
        ),
      ),
            SizedBox(height: 20),
          Container(

            decoration: BoxDecoration(
                  color: Colors.white38
            ),
            width: MediaQuery
                  .of(context)
                  .size
                  .width,
            height: MediaQuery
                  .of(context)
                  .size
                  .height *1,
            child: GridView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
               scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing:1,
                  mainAxisSpacing: 1,
              ),
              itemCount:  images_Schedule.length,
              itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      index ==0 ? Navigator.push(context, MaterialPageRoute(builder: (context) => CarSelectName(),)):
                      index ==1 ? Navigator.push(context, MaterialPageRoute(builder: (context) => CarSelectName(),)):
                      index ==2 ? Navigator.push(context, MaterialPageRoute(builder: (context) => CarSelectName(),)):
                      index ==3 ? Navigator.push(context, MaterialPageRoute(builder: (context) => CarSelectName(),)):
                      index ==4 ? Navigator.push(context, MaterialPageRoute(builder: (context) => CarSelectName(),)):
                      index ==5 ? Navigator.push(context, MaterialPageRoute(builder: (context) => CarSelectName(),)):
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CarSelectName(),));
                    },
                    child: Container(
                      child: Card(
                         color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8),
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset( images_Schedule[index],
                                  width: MediaQuery.of(context).size.width * 0.35, // height:MediaQuery.of(context).size.height*0.2,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
              },),
          ),

      ],
    ),
                ),

    );
  }
}
