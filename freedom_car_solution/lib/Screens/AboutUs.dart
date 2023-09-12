import 'package:flutter/material.dart';
class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: Icon(Icons.arrow_back_ios, color: Colors.black,),
       ),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(

              height:MediaQuery.of(context).size.height,
            width:MediaQuery.of(context).size.width*1,
            child: Column(

              children: [
                Image.asset("assets/images/splash/SplashScreen.png"),

                 SizedBox(height:30),
                Text("About Us", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),),
                  Text("Freedom car solution provides an online car servicing platform intended to help people to schedule their car servicing online in a desired time. Its platform offers to book services like denting and painting, exterior and interior car care services and cashless insurance repairs, enabling users to service their cars in a hassle-free manner."
                      "GoMechanic provides an online car servicing platform intended to help people to schedule their car servicing online in a desired time. Its platform offers to book services like denting and painting, exterior and interior car care services and cashless insurance repairs, enabling users to service their cars in a hassle-free manner."
                      "GoMechanic provides an online car servicing platform intended to help people to schedule their car servicing online in a desired time. Its platform offers to book services like denting and painting, exterior and interior car care services and cashless insurance repairs, enabling users to service their cars in a hassle-free manner.", style: TextStyle(
                    fontSize: 15,
                     fontWeight: FontWeight.w400
                  ),),
                 SizedBox(height: 20),
                 Text("Rate Us" , textAlign: TextAlign.start, style: TextStyle(
                     fontSize: 15,
                     fontWeight: FontWeight.bold,
                 ),),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     Icon(Icons.star,color: Colors.orange,),
                     Icon(Icons.star,color: Colors.orange,),
                     Icon(Icons.star,color: Colors.orange,),
                     Icon(Icons.star,color: Colors.orange,),
                     Icon(Icons.star,color: Colors.grey,),

                   ],

                )

              ],
            ),

          ),

        ),



    );
  }
}
