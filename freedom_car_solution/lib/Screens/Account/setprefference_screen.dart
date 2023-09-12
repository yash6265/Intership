import 'package:flutter/material.dart';



class SetPreferences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Preferences'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageBanner(),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.engineering),
                  SizedBox(width: 16.0),
                  Text('Preferred Engine Oil'),
                  Spacer(),
                  Text('Mineral Oil'),
                  SizedBox(width: 12.0),
                  // Text('Mobil 5W30'),
                  SizedBox(width: 8.0),
                  GestureDetector(
                    onTap: () {
                      // Handle edit action
                    },
                    child: Row(
                      children: [
                        Text('Edit'),
                        SizedBox(width: 4.0),
                        Icon(Icons.edit),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.check_circle),
                  SizedBox(width: 16.0),
                  Text('Preferred Fulfillment Mode'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: Text('Pick up from location'),
                      value: 0,
                      groupValue: null, // Add group value here
                      onChanged: (value) {
                        // Handle radio button selection
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      title: Text('Walk-in to workshop'),
                      value: 1,
                      groupValue: null, // Add group value here
                      onChanged: (value) {
                        // Handle radio button selection
                      },
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.room_preferences),
                  SizedBox(width: 16.0),
                  Text('Preferred Service Buddy',style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),

                  ),
                ],
              ),
            ),
            // Divider(),
            Container(padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.car_repair),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Text('Choose your preferred service buddy after the first service'),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

class ImageBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/banner.png'), // Replace with your image
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}