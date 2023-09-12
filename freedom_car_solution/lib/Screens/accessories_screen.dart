import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:freedom_car_solution/Utils/colors.dart';
import 'package:freedom_car_solution/Utils/utils.dart';

class AccessoriesScreen extends StatefulWidget {
  const AccessoriesScreen({Key? key}) : super(key: key);

  @override
  State<AccessoriesScreen> createState() => _AccessoriesScreenState();
}

class _AccessoriesScreenState extends State<AccessoriesScreen> {
  late var _height = MediaQuery.of(context).size.height;
  late var _width = MediaQuery.of(context).size.width;

  List<String> images_Schedule = [
    "assets/images/icons/Clutch_icon.png",
    "assets/images/icons/Clutch_icon.png",
    "assets/images/icons/Clutch_icon.png",
    "assets/images/icons/Clutch_icon.png",
    "assets/images/icons/Clutch_icon.png",
    "assets/images/icons/Clutch_icon.png",
  ];
  List<String> images_trending = [
    'assets/images/banners/Trending_Services_001 (1).png',
    'assets/images/banners/Trending_Services_001 (1).png',
    'assets/images/banners/Trending_Services_001 (1).png',
    'assets/images/banners/Trending_Services_001 (1).png',
    'assets/images/banners/Trending_Services_001 (1).png',
    'assets/images/banners/Trending_Services_001 (1).png',
  ];
  List<String> images_curated = [
    'assets/images/icons/custom_services_01 1.png',
    'assets/images/icons/custom_services_02 1.png',
    'assets/images/icons/custom_services_03 1.png',
    'assets/images/icons/custom_services_03 1.png',
    'assets/images/icons/custom_services_03 1.png',
    'assets/images/icons/custom_services_03 1.png',

  ];
  List<String> names_Schedule = [
    "AC Services",
    "Periodic Service",
    "Tyres & Wheel Care",
    "Batteries",
    "Tyres & Wheel Care",
    "Batteries",

  ];

  @override
  Widget build(BuildContext context) {
    FrameSize.init(context: context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.primaryAppColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: _height * 0.04,),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          color: Colors.white,
                          size: _width * 0.06,
                        ),
                        SizedBox(width: 2,),
                        Text(
                          "Location",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: _width * 0.06
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                      child: Text(
                        "Detailed Location",
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.normal,
                          fontSize: _width * 0.045,
                        ),
                      ),
                    ),
                    SizedBox(height: _height * 0.01,),
                    Center(
                      child: Container(
                        height: 35,
                        width: _width * 0.9,
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
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8,vertical:3),
                          child: TextField(
                            style: TextStyle(color: Colors.white,fontSize: 15),
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              prefixIcon: Icon(Icons.search_rounded,color: Colors.black38,size: 15,),
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.black38,fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: _height * 0.01,),
                  ],
                ),
              ),
            ),
            SizedBox(height: _height * 0.01,),
            // CarouselSlider(
            //   items: [
            //     //1st Image of Slider
            //     Container(
            //       margin: const EdgeInsets.all(1.0),
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(8.0),
            //         image: const DecorationImage(
            //           image: AssetImage("assets/images/banners/banner_001.png"),
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //     ),
            //
            //     //2nd Image of Slider
            //     Container(
            //       margin: const EdgeInsets.all(1.0),
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(8.0),
            //         image: const DecorationImage(
            //           image: AssetImage("assets/images/banners/banner_002.jpg"),
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //     ),
            //
            //     //3rd Image of Slider
            //     Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(8.0),
            //         image: const DecorationImage(
            //           image: AssetImage("assets/images/banners/banner_003.jpg"),
            //           fit: BoxFit.fitWidth, scale: 200,
            //         ),
            //       ),
            //     ),
            //   ],
            //   //Slider Container properties
            //   options: CarouselOptions(
            //     height: 180.0,
            //     enlargeCenterPage: true,
            //     autoPlay: true,
            //     aspectRatio: 16 / 4,
            //     autoPlayCurve: Curves.fastOutSlowIn,
            //     enableInfiniteScroll: true,
            //     // autoPlayAnimationDuration: const Duration(
            //     //     milliseconds: 800),
            //     viewportFraction: 0.95,
            //   ),
            // ),
            SizedBox(height: _height * 0.01,),
            Container(
              height: _height * 0.38,
              width: _width,
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: _width * 0.03, ),
                    child: Text('At Home Delivery',style: TextStyle(fontWeight: FontWeight.bold,fontSize: _width * 0.06),),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: _width * 0.03, ),
                    child: Text('Free Shipping Pan India',style: TextStyle(color: Colors.black54,fontSize: _width * 0.04),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: _height * 0.3,
                        width: _width ,
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                          ),
                          itemCount: names_Schedule.length,
                          itemBuilder: (BuildContext, i){
                            return Container(
                              height: 100,
                              decoration: BoxDecoration(
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
                              child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Image.asset( images_Schedule[i],
                                    width: MediaQuery.of(context).size.width * 0.15, // height:MediaQuery.of(context).size.height*0.2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text( names_Schedule[i] ,
                                      // overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize:_width * 0.03, fontWeight: FontWeight.bold,),),
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: _height * 0.01,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _width * 0.03, ),
              child: Text('Trending Products',style: TextStyle(fontWeight: FontWeight.bold,fontSize: _width * 0.06),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: _height * 0.3,
                  width: _width ,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                    ),
                    itemCount: images_trending.length,
                    itemBuilder: (BuildContext, i){
                      return Image.asset(images_trending[i]);
                    },
                  )
              ),
            ),
            Container(
              height: _height * 0.4,
              width: _width,
              color: Colors.grey[200],
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: _width * 0.03, ),
                    child: Text('Curated Accessories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: _width * 0.06),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: _height * 0.3,
                        width: _width ,
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                          ),
                          itemCount: images_curated.length,
                          itemBuilder: (BuildContext, i){
                            return Container(
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // boxShadow:[
                                //   BoxShadow(
                                //     color: Colors.grey.withOpacity(0.5),
                                //     spreadRadius: 1,
                                //     blurRadius: 7,
                                //     offset: Offset(0, 2),
                                //   ),
                                // ],
                              ),
                              child: Column(
                                children: [
                                  Image.asset( images_curated[i],
                                    width: MediaQuery.of(context).size.width * 0.16, // height:MediaQuery.of(context).size.height*0.2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text( names_Schedule[i] ,
                                      // overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize:_width * 0.03, fontWeight: FontWeight.bold,),),
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}