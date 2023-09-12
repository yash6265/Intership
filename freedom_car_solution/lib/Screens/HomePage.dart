import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Screens/Account/Refers&earn.dart';
import 'package:freedom_car_solution/Screens/ServiceForm/ServiceForm.dart';
import 'package:freedom_car_solution/Utils/colors.dart';
import 'package:freedom_car_solution/Utils/utils.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();

}
int selectedindex = 0;
class _HomeScreenState extends State<HomeScreen> {



  List<String> images_Schedule = [
    "assets/images/icons/AcServicing_icon.png",
    "assets/images/icons/Periodic services.png",
    "assets/images/icons/Wheel_Tyre_icons.png",
    "assets/images/icons/Clutch_icon.png",

  ];
  List<String> names_Schedule = [
    "AC Services",
    "Periodic Service",
    "Tyres & Wheel Care",
    "Batteries",

  ];
  //  Value Added Serivices
  List<String> images_Value = [
    "assets/images/icons/Denting_icon.png",
    "assets/images/icons/car_spa_icon.png",
    "assets/images/icons/car_inspection_icon.png",
    "assets/images/icons/Clutch_icon.png",

  ];
  List<String> names_value = [
    "Denting & Panting ",
    "Car Spa & Cleaning ",
    "Car Insepection ",
    "Dentailing Services",

  ];

  // Mechnical Repairs

  //  Value Added Serivices
  List<String> images_Mechnical = [
    "assets/images/icons/Denting_icon.png",
    "assets/images/icons/car_spa_icon.png",
    "assets/images/icons/car_inspection_icon.png",
    "assets/images/icons/Clutch_icon.png",

  ];
  List<String> names_Mechnical = [
    "Denting & Panting ",
    "Car Spa & Cleaning ",
    "Car Insepection ",
    "Dentailing Services",

  ];
  List<String> image_recentServices = [
    "assets/images/mechanic img.png",
    "assets/images/mechanic img.png",
    "assets/images/mechanic img.png",
    "assets/images/mechanic img.png",
    "assets/images/mechanic img.png",
    "assets/images/mechanic img.png",
  ];

  List<String> images_CustomServices = [
    "assets/images/icons/Custom01.png",
    "assets/images/icons/custom_services_02 1.png",
    "assets/images/icons/custom_services_03 1.png",
    "assets/images/icons/custom_services_04 1.png",
    "assets/images/icons/custom_services_03 1.png",
    "assets/images/icons/custom_services_04 1.png",
    "assets/images/icons/custom_services_03 1.png",
    "assets/images/icons/custom_services_04 1.png",

  ];

  List<String> names_CustomServices = [
    "Clutch ",
    "Tyre",
    "Suspension ",
    "Light",
    "Clutch ",
    "Tyre",
    "Suspension ",
    "Light",

  ];



  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FrameSize.init(context: context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: FrameSize.screenWidth,
            height: FrameSize.screenHeight * 0.23,
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
                        SizedBox(height: 30),
                        Icon(Icons.menu,color: Colors.white,size: FrameSize.screenWidth * 0.06,),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.location_on,color: Colors.white,size: FrameSize.screenWidth * 0.055,),
                            Text("Indore",style: TextStyle(color: Colors.white,fontSize: FrameSize.screenWidth * 0.05),),
                          ],
                        ),
                        Text("  AB Road , New Palasia", style: TextStyle(color: Colors.white70,fontSize: FrameSize.screenWidth * 0.04)),
                        SizedBox(height: 12),
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
                                keyboardType: TextInputType.number,
                                style: TextStyle(color: Colors.grey,fontSize: 15),
                                decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  prefixIcon: Icon(Icons.search,color: Colors.black38,size: 15,),
                                  hintText: 'Search ',
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
            SizedBox(height: FrameSize.screenHeight * 0.02,),
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/banners/banner_001.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/banners/banner_002.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/banners/banner_003.jpg"),
                      fit: BoxFit.fitWidth, scale: 200,
                    ),
                  ),
                ),
              ],
              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                // autoPlayAnimationDuration: const Duration(
                //     milliseconds: 800),
                viewportFraction: 0.95,
              ),
            ),
            SizedBox(height: FrameSize.screenHeight * 0.0,),
            Padding(
              padding:  EdgeInsets.all(FrameSize.screenWidth * 0.03),
              child: Text("Popular Services",
                style: TextStyle(color: Colors.black,fontSize: FrameSize.screenWidth * 0.05,fontWeight: FontWeight.w500),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:FrameSize.screenWidth * 0.03),
                  child:
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FormPage() ));
                    },
                    child: Container(
                      height: FrameSize.screenHeight * 0.1,
                      width: FrameSize.screenWidth * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        color: AppColors.primaryAppColor.withOpacity(0.2)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.tire_repair,color: AppColors.secondoryAppColor,size: FrameSize.screenWidth * 0.1,),
                          Text("Fabrication",
                            style: TextStyle(color: AppColors.secondoryAppColor,fontSize: FrameSize.screenWidth * 0.04,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                  ),
                ),Padding(
                  padding: EdgeInsets.symmetric(horizontal:FrameSize.screenWidth * 0.03),
                  child: Container(
                    height: FrameSize.screenHeight * 0.1,
                    width: FrameSize.screenWidth * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      color: AppColors.primaryAppColor.withOpacity(0.2)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.engineering_outlined,color: AppColors.secondoryAppColor,size: FrameSize.screenWidth * 0.1,),
                        Text("Fabrication",
                          style: TextStyle(color: AppColors.secondoryAppColor,fontSize: FrameSize.screenWidth * 0.04,fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ),Padding(
                  padding: EdgeInsets.symmetric(horizontal:FrameSize.screenWidth * 0.03),
                  child: Container(
                    height: FrameSize.screenHeight * 0.1,
                    width: FrameSize.screenWidth * 0.25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      color: AppColors.primaryAppColor.withOpacity(0.2)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.car_repair_sharp,color: AppColors.secondoryAppColor,size: FrameSize.screenWidth * 0.1,),
                        Text("Fabrication",
                          style: TextStyle(color: AppColors.secondoryAppColor,fontSize: FrameSize.screenWidth * 0.04,fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(FrameSize.screenWidth * 0.03),
              child: Text("Recent Services",
                style: TextStyle(color: Colors.black,fontSize: FrameSize.screenWidth * 0.05,fontWeight: FontWeight.w500),),
            ),
           Container(
             height: FrameSize.screenHeight * 0.21,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: FrameSize.screenWidth * 0.02),
                  child: GridView.builder(
                    itemCount: image_recentServices.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5
                      ),
                      itemBuilder:(Builcontext, i){
                        return Container(
                          height: FrameSize.screenHeight * 0.2,
                          width: FrameSize.screenWidth * 0.3,
                          decoration: BoxDecoration(
                        //      borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[200],                        ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Container(
                                 height: FrameSize.screenHeight * 0.18,
                                 width: FrameSize.screenWidth * 0.45,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                 ),
                                 child: Image.asset(image_recentServices[i],fit: BoxFit.cover,)
                             ),
                              SizedBox(height: FrameSize.screenHeight * 0.01,),
                              Text(
                                "Repairing",
                                style: TextStyle(color: AppColors.secondoryAppColor,fontSize: FrameSize.screenWidth * 0.04,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        );
                      }
                  ),
                )
            ),
          ],
        ),
      ),

      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 8),
      //   child: SingleChildScrollView(
      //     child: Column(
      //         children: [
      //           // SizedBox(height: 5),
      //           TextFormField(
      //             controller: _searchController,
      //             decoration: InputDecoration(
      //                 hintText: "Search Services & Packages",
      //                 suffixIcon: IconButton(onPressed: () {
      //                   _searchController.clear();
      //                 }, icon: const Icon(Icons.clear)),
      //                 prefixIcon: IconButton(
      //                   icon: const Icon(Icons.search, color: Colors.blue,),
      //                   onPressed: () {},
      //                 ),
      //                 border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(20),
      //
      //                 )
      //
      //             ),
      //
      //           ),
      //         SizedBox(height: 20),
      //           SizedBox(
      //             width: MediaQuery
      //                 .of(context)
      //                 .size
      //                 .width,
      //             height: MediaQuery
      //                 .of(context)
      //                 .size
      //                 .height * 0.25,
      //             child: ListView(
      //               children: [
      //                 CarouselSlider(
      //                   items: [
      //                     //1st Image of Slider
      //                     Container(
      //                       margin: const EdgeInsets.all(1.0),
      //                       decoration: BoxDecoration(
      //                         borderRadius: BorderRadius.circular(10.0),
      //                         image: const DecorationImage(
      //                           image: AssetImage("assets/images/banners/banner_001.png"),
      //                           fit: BoxFit.cover,
      //                         ),
      //                       ),
      //                     ),
      //
      //                     //2nd Image of Slider
      //                     Container(
      //                       margin: const EdgeInsets.all(1.0),
      //                       decoration: BoxDecoration(
      //                         borderRadius: BorderRadius.circular(8.0),
      //                         image: const DecorationImage(
      //                           image: AssetImage("assets/images/banners/banner_002.jpg"),
      //                           fit: BoxFit.cover,
      //                         ),
      //                       ),
      //                     ),
      //
      //                     //3rd Image of Slider
      //                     Container(
      //                       margin: const EdgeInsets.all(1.0),
      //                       decoration: BoxDecoration(
      //                         borderRadius: BorderRadius.circular(8.0),
      //                         image: const DecorationImage(
      //                           image: AssetImage("assets/images/banners/banner_003.jpg"),
      //                           fit: BoxFit.cover,
      //                         ),
      //                       ),
      //                     ),
      //
      //                     Container(
      //                       margin: const EdgeInsets.all(1.0),
      //                       decoration: BoxDecoration(
      //                         borderRadius: BorderRadius.circular(8.0),
      //                         image: const DecorationImage(
      //                           image: AssetImage("assets/images/banners/banner_004.jpg"),
      //                           fit: BoxFit.cover,
      //                         ),
      //                       ),
      //                     ),
      //
      //                   ],
      //
      //                   //Slider Container properties
      //                   options: CarouselOptions(
      //                     height: 180.0,
      //                     enlargeCenterPage: true,
      //                     autoPlay: true,
      //                     aspectRatio: 16 / 9,
      //                     autoPlayCurve: Curves.fastOutSlowIn,
      //                     enableInfiniteScroll: true,
      //                     autoPlayAnimationDuration: const Duration(
      //                         milliseconds: 800),
      //                     viewportFraction: 0.91,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //
      //           Column(
      //
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             mainAxisAlignment: MainAxisAlignment.start,
      //
      //             children: [
      //               Align(
      //                 alignment: Alignment.centerLeft,
      //
      //                 child:
      //
      //                 Text("Scheduled Services", style: TextStyle(
      //                   fontSize: 20, fontWeight: FontWeight.bold,),),
      //
      //               ),
      //               SizedBox(height: 10,),
      //
      //               Container(
      //                 decoration: BoxDecoration(
      //                     color: Colors.white38
      //                 ),
      //                 width: MediaQuery
      //                     .of(context)
      //                     .size
      //                     .width,
      //                 height: MediaQuery
      //                     .of(context)
      //                     .size
      //                     .height * 0.15,
      //
      //                 child: GridView.builder(
      //
      //                   shrinkWrap: true,
      //                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //                     crossAxisCount: 4,
      //                     crossAxisSpacing:1,
      //                     mainAxisSpacing: 1,
      //
      //
      //                   ),
      //
      //                   itemCount:  images_Schedule.length,
      //                   itemBuilder: (context, index) {
      //                     return Container(
      //                       child: Card(
      //
      //                         child: Padding(
      //                           padding: const EdgeInsets.symmetric(
      //                               horizontal: 8),
      //                           child: Container(
      //                             height: MediaQuery.of(context).size.height*0.4,
      //                             child: Column(
      //                               mainAxisAlignment: MainAxisAlignment.center,
      //                               crossAxisAlignment: CrossAxisAlignment.center,
      //                               children: [
      //
      //                                 Image.asset( images_Schedule[index],
      //                                   width: MediaQuery.of(context).size.width * 0.13, // height:MediaQuery.of(context).size.height*0.2,
      //                                 ),
      //                                 Padding(
      //                                   padding: const EdgeInsets.symmetric(horizontal: 5),
      //                                   child: Text( names_Schedule[index] , style: TextStyle(fontSize:11, fontWeight: FontWeight.bold),),
      //                                 ),
      //
      //                               ],
      //                             ),
      //                           ),
      //                         ),
      //
      //                       ),
      //                     );
      //                   },),
      //               ),
      //
      //
      //             ],
      //
      //
      //           ),
      //           Align(
      //               alignment: Alignment.centerLeft,
      //               child: Text("Value Added Services", style: TextStyle(
      //                   fontWeight: FontWeight.bold, fontSize: 20),)
      //
      //           ),
      //
      //           Container(
      //             decoration: BoxDecoration(
      //                 color: Colors.white38
      //             ),
      //             width: MediaQuery
      //                 .of(context)
      //                 .size
      //                 .width,
      //             height: MediaQuery
      //                 .of(context)
      //                 .size
      //                 .height * 0.15,
      //
      //             child: GridView.builder(
      //
      //               shrinkWrap: true,
      //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //                 crossAxisCount: 4,
      //                 crossAxisSpacing:1,
      //                 mainAxisSpacing: 1,
      //
      //
      //               ),
      //
      //               itemCount: images_Value.length,
      //               itemBuilder: (context, index) {
      //                 return Container(
      //
      //                   child: Card(
      //
      //                     child: Padding(
      //                       padding: const EdgeInsets.symmetric(
      //                           horizontal: 8),
      //                       child: Container(
      //                         height: MediaQuery.of(context).size.height*0.4,
      //                         child: Column(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           crossAxisAlignment: CrossAxisAlignment.center,
      //                           children: [
      //                             Image.asset(images_Value[index],
      //                               width: MediaQuery.of(context).size.width * 0.13, // height:MediaQuery.of(context).size.height*0.2,
      //                             ),
      //                             Text(names_value[index] , style: TextStyle(fontSize:11, fontWeight: FontWeight.bold),),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //
      //                   ),
      //                 );
      //               },),
      //           ),
      //
      //           Align(
      //               alignment: Alignment.centerLeft,
      //               child: Text("Mechanical Repairs", style: TextStyle(
      //                   fontWeight: FontWeight.bold, fontSize: 20),)
      //
      //           ),
      //
      //           Container(
      //             decoration: BoxDecoration(
      //                 color: Colors.white38
      //             ),
      //             width: MediaQuery
      //                 .of(context)
      //                 .size
      //                 .width,
      //             height: MediaQuery
      //                 .of(context)
      //                 .size
      //                 .height * 0.15,
      //
      //             child: GridView.builder(
      //               shrinkWrap: true,
      //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //                 crossAxisCount: 4,
      //                 crossAxisSpacing:1,
      //                 mainAxisSpacing: 1,
      //
      //
      //               ),
      //
      //               itemCount: images_Mechnical.length,
      //               itemBuilder: (context, index) {
      //                 return Container(
      //
      //                   child: Card(
      //
      //                     child: Padding(
      //                       padding: const EdgeInsets.symmetric(
      //                           horizontal: 8),
      //                       child: Container(
      //                         height: MediaQuery.of(context).size.height*0.4,
      //                         child: Column(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           crossAxisAlignment: CrossAxisAlignment.center,
      //                           children: [
      //                             Image.asset(images_Mechnical[index],
      //                               width: MediaQuery.of(context).size.width * 0.13, // height:MediaQuery.of(context).size.height*0.2,
      //                             ),
      //                             Text(names_Mechnical[index] , style: TextStyle(fontSize:11, fontWeight: FontWeight.bold),),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //
      //                   ),
      //                 );
      //               },),
      //
      //
      //
      //           ),
      //          //   SizedBox(height: ),
      //           Align(
      //               alignment: Alignment.centerLeft,
      //               child: Text("Trending Services", style: TextStyle(
      //                   fontWeight: FontWeight.bold, fontSize: 20),)
      //
      //           ),
      //           SizedBox(height: 5),
      //
      //           CarouselSlider(
      //             items: [
      //               //1st Image of Slider
      //               Container(
      //                 margin: const EdgeInsets.all(1.0),
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(10.0),
      //                   image: const DecorationImage(
      //                     image: AssetImage("assets/images/banners/Trending_Services_001 (1).png"),
      //                     fit: BoxFit.cover,
      //                   ),
      //                 ),
      //               ),
      //
      //               //2nd Image of Slider
      //               Container(
      //                 margin: const EdgeInsets.all(1.0),
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(8.0),
      //                   image: const DecorationImage(
      //                     image: AssetImage("assets/images/banners/Trending_Services_001 (2).png"),
      //                     fit: BoxFit.cover,
      //                   ),
      //                 ),
      //               ),
      //
      //               //3rd Image of Slider
      //               Container(
      //                 margin: const EdgeInsets.all(1.0),
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(8.0),
      //                   image: const DecorationImage(
      //                     image: AssetImage("assets/images/banners/Trending_Services_001 (3).png"),
      //                     fit: BoxFit.cover,
      //                   ),
      //                 ),
      //               ),
      //
      //             ],
      //
      //             //Slider Container properties
      //             options: CarouselOptions(
      //               height: 180.0,
      //               enlargeCenterPage: false,
      //               autoPlay: false,
      //               aspectRatio: 16 / 9,
      //               autoPlayCurve: Curves.fastOutSlowIn,
      //               enableInfiniteScroll: true,
      //               autoPlayAnimationDuration: const Duration(
      //                   milliseconds: 800),
      //               viewportFraction: 0.50,
      //             ),
      //           ),
      //           SizedBox(height: 10),
      //
      //           Align(
      //               alignment: Alignment.centerLeft,
      //               child: Text("Curated Custom Services", style: TextStyle(
      //                   fontWeight: FontWeight.bold, fontSize: 20),)
      //
      //           ),
      //
      //           Container(
      //             decoration: BoxDecoration(
      //                 color: Colors.white38
      //             ),
      //             width: MediaQuery
      //                 .of(context)
      //                 .size
      //                 .width,
      //             height: MediaQuery
      //                 .of(context)
      //                 .size
      //                 .height * 0.15,
      //
      //             child: GridView.builder(
      //               scrollDirection: Axis.horizontal,
      //               shrinkWrap: true,
      //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //                 crossAxisCount: 1,
      //                 crossAxisSpacing:1,
      //                 mainAxisSpacing: 1,
      //
      //
      //               ),
      //
      //               itemCount: images_CustomServices.length,
      //               itemBuilder: (context, index) {
      //                 return Container(
      //
      //                   child: Card(
      //
      //                     child: Padding(
      //                       padding: const EdgeInsets.symmetric(
      //                           horizontal: 8),
      //                       child: Container(
      //                         height: MediaQuery.of(context).size.height*0.4,
      //                         child: Column(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           crossAxisAlignment: CrossAxisAlignment.center,
      //                           children: [
      //                             Image.asset(images_CustomServices[index],
      //                               width: MediaQuery.of(context).size.width * 0.13, // height:MediaQuery.of(context).size.height*0.2,
      //                             ),
      //                             Text(names_CustomServices[index] , style: TextStyle(fontSize:11, fontWeight: FontWeight.bold),),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //
      //                   ),
      //                 );
      //               },),
      //
      //
      //
      //           ),
      //
      //           SizedBox(height: 10),
      //
      //           Align(
      //               alignment: Alignment.centerLeft,
      //               child: Text("Choose Best Workshop Near You ", style: TextStyle(
      //                   fontWeight: FontWeight.bold, fontSize: 20),)
      //
      //           ),
      //            Text("Schedule a Pickup Today!" ,textAlign:TextAlign.start),
      //
      //
      //
      //           Container(
      //             decoration: BoxDecoration(
      //                 color: Colors.white38
      //             ),
      //             width: MediaQuery
      //                 .of(context)
      //                 .size
      //                 .width,
      //             height: MediaQuery
      //                 .of(context)
      //                 .size
      //                 .height * 0.15,
      //
      //             child: GridView.builder(
      //               scrollDirection: Axis.horizontal,
      //               shrinkWrap: true,
      //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //                 crossAxisCount: 1,
      //                 crossAxisSpacing:1,
      //                 mainAxisSpacing: 1,
      //
      //
      //               ),
      //
      //               itemCount: images_CustomServices.length,
      //               itemBuilder: (context, index) {
      //                 return Container(
      //
      //                   child: Card(
      //
      //                     child: Padding(
      //                       padding: const EdgeInsets.symmetric(
      //                           horizontal: 8),
      //                       child: Container(
      //                         height: MediaQuery.of(context).size.height*0.4,
      //                         child: Column(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           crossAxisAlignment: CrossAxisAlignment.center,
      //                           children: [
      //                             Image.asset(images_CustomServices[index],
      //                               width: MediaQuery.of(context).size.width * 0.13, // height:MediaQuery.of(context).size.height*0.2,
      //                             ),
      //                             Text(names_CustomServices[index] , style: TextStyle(fontSize:11, fontWeight: FontWeight.bold),),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //
      //                   ),
      //                 );
      //               },),
      //
      //
      //
      //           ),
      //
      //           SizedBox(height: 10),
      //
      //           Align(
      //               alignment: Alignment.centerLeft,
      //               child: Text("Curated Accessories ", style: TextStyle(
      //                   fontWeight: FontWeight.bold, fontSize: 20),)
      //
      //           ),
      //
      //           Container(
      //             decoration: BoxDecoration(
      //                 color: Colors.white38
      //             ),
      //             width: MediaQuery
      //                 .of(context)
      //                 .size
      //                 .width,
      //             height: MediaQuery
      //                 .of(context)
      //                 .size
      //                 .height * 0.15,
      //
      //             child: GridView.builder(
      //               scrollDirection: Axis.horizontal,
      //               shrinkWrap: true,
      //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //                 crossAxisCount: 1,
      //                 crossAxisSpacing:1,
      //                 mainAxisSpacing: 1,
      //
      //
      //               ),
      //
      //               itemCount: images_CustomServices.length,
      //               itemBuilder: (context, index) {
      //                 return Container(
      //
      //                   child: Card(
      //
      //                     child: Padding(
      //                       padding: const EdgeInsets.symmetric(
      //                           horizontal: 8),
      //                       child: Container(
      //                         height: MediaQuery.of(context).size.height*0.4,
      //                         child: Column(
      //                           mainAxisAlignment: MainAxisAlignment.center,
      //                           crossAxisAlignment: CrossAxisAlignment.center,
      //                           children: [
      //                             Image.asset(images_CustomServices[index],
      //                               width: MediaQuery.of(context).size.width * 0.13, // height:MediaQuery.of(context).size.height*0.2,
      //                             ),
      //                             Text(names_CustomServices[index] , style: TextStyle(fontSize:11, fontWeight: FontWeight.bold),),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //
      //                   ),
      //                 );
      //               },),
      //
      //
      //
      //           ),
      //
      //
      //
      //         ]
      //
      //
      //
      //
      //     ),
      //   ),
      // ),

    );
  }

}
