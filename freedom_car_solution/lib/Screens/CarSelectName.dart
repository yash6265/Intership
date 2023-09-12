import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Utils/colors.dart';

class CarSelectName extends StatefulWidget {
  @override
  _CarSelectNameState createState() => _CarSelectNameState();
}

class _CarSelectNameState extends State<CarSelectName> {
  final TextEditingController _searchController = TextEditingController();


  List<String> images_Schedule = [
    "assets/images/icons/ritz.png",
    "assets/images/icons/swift.png",
    "assets/images/icons/wagonr.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/swift.png",
    "assets/images/icons/wagonr.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/swift.png",
    "assets/images/icons/wagonr.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/swift.png",
    "assets/images/icons/wagonr.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/swift.png",
    "assets/images/icons/wagonr.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/swift.png",
    "assets/images/icons/wagonr.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/swift.png",
    "assets/images/icons/wagonr.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/ritz.png",
    "assets/images/icons/swift.png",
    "assets/images/icons/wagonr.png",
    "assets/images/icons/ritz.png",

  ];

  List<String> names_Schedule = [
    "Ritz",
    "Swift",
    "WagonR",
    "Ritz",
    "Ritz",
    "Swift",
    "WagonR",
    "Ritz",
    "Ritz",
    "Swift",
    "WagonR",
    "Ritz",
    "Ritz",
    "Swift",
    "WagonR",
    "Ritz",
    "Ritz",
    "Swift",
    "WagonR",
    "Ritz",
    "Ritz",
    "Swift",
    "WagonR",
    "Ritz",
    "Ritz",
    "Swift",
    "WagonR",
    "Ritz",
    "Ritz",
    "Swift",
    "WagonR",
    "Ritz",
    "Ritz",
    "Swift",
    "WagonR",
    "Ritz",
    "Ritz",
    "Swift",
    "WagonR",
    "Ritz",
    "Ritz",
    "Swift",
    "WagonR",
    "Ritz",
    "Ritz",
    "Swift",
    "WagonR",
    "Ritz",
    "Ritz",
    "Swift",
    "WagonR",
    "Ritz", "Ritz",
    "Swift",
    "WagonR",
    "Ritz",



  ];



  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator BranddetailsWidget - FRAME
    return Scaffold(
      appBar:
      PreferredSize( preferredSize: Size.fromHeight(60.0),
        child:
        AppBar(
          centerTitle: true,
          automaticallyImplyLeading: true,
          leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10,vertical:5),
              child: SizedBox(
                height: 40,
                child: TextFormField(
                  controller: _searchController,
                  decoration: InputDecoration(
                      hintText: "Search car ",
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: IconButton(onPressed: () {
                        _searchController.clear();
                      }, icon: const Icon(Icons.clear)),
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.search, color: Colors.grey,),
                        onPressed: () {},
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),

                      )

                  ),

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
                  return Container(
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
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Text( names_Schedule[index] , style: TextStyle(fontSize:11, fontWeight: FontWeight.bold),),
                              ),


                            ],
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
