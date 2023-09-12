import 'package:flutter/material.dart';
class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Icon(Icons.arrow_back_ios, color: Colors.black,),

      ),
        body: Column(
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
                padding: const EdgeInsets.all(27.0),
                child: Text("Automobile villa Ritz 2/16 car", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
                 
              ),
            ),
              SizedBox(height: 25),
             Text("Descriptions" , textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold),),
             Padding(
               padding: const EdgeInsets.all(27.0),
               child: Text("Lorem ipsum, or lipsum as it is sometimes known, "
            " is dummy text used in laying out print, graphic or"
               "  web designs. The passage is attributed to an un"
                 "known typesetter in the 15th century who is have"
                 "thought to have scrambled parts of Cicero's De "
                " Finibus Bonorum et Malorum for use in a type"
                 "specimen book.",style: TextStyle(
                 fontSize: 15
               ),),
             ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [


                Row(
                  children: [
                    Text("Rs 1.5Cr", style: TextStyle(
                        fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),

                Row(
                  children: [
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.orange,),
                    Icon(Icons.star,color: Colors.grey,),
                  ],
                ),





              ],

            ),
            Container(
              width: MediaQuery.of(context).size.width*0.80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromRGBO(29, 102, 174, 1),
              ),
              child: TextButton(
                onPressed: () {
                  // Handle submit button pressed
                },
                child: Text(
                  'Add to cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),


          ],
        ),
    );
  }
}
