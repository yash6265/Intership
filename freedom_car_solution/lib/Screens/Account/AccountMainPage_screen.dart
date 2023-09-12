// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
//
//
// class AccountMainPageScreen extends StatelessWidget {
//   const AccountMainPageScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         title: const Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Hello, Customer',
//               style: TextStyle(
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(height: 4),
//             Row(
//               children: [
//                 Icon(
//                   Icons.flag,
//                   size: 16,
//                 ),
//                 SizedBox(width: 4),
//                 Text(
//                   '+123456789',
//                   style: TextStyle(
//                     fontSize: 12,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         backgroundColor: Colors.white,
//       ),
//       body: const SingleChildScrollView(
//         child: HeaderWidget(),
//       ),
//     );
//   }
// }
//
// class HeaderWidget extends StatelessWidget {
//   const HeaderWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           color: Colors.white10,
//           padding: const EdgeInsets.all(16.0),
//         ),
//         const SizedBox(height: 16),
//         const Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Column(
//               children: [
//                 IconContainer(
//                     icon: Icons.history,
//                     text: 'Order History',
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 IconContainer(
//                   icon: Icons.car_rental,
//                   text: 'My Cars',
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 IconContainer(
//                   icon: Icons.verified_user,
//                   text: 'Help & Support',
//                 ),
//               ],
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),
//         const Divider(height: 30,),
//         Column(
//           children: [
//             buildRectangleContainer(Icons.email, 'Email'),
//             const SizedBox(height: 8),
//             buildRectangleContainer(Icons.phone, 'Phone'),
//             const SizedBox(height: 8),
//             buildRectangleContainer(Icons.location_on, 'Address'),
//
//             const Divider(height: 30,),
//             const SizedBox(height: 8),
//             buildRectangleContainer(Icons.person, 'Profile'),
//             const SizedBox(height: 8),
//             buildRectangleContainer(Icons.settings, 'Set Preferences'),
//             const SizedBox(height: 8),
//             buildRectangleContainer(Icons.document_scanner_outlined, 'Activate OBD'),
//             const SizedBox(height: 8),
//             buildRectangleContainer(Icons.card_giftcard, 'Refer and Earn'),
//             const SizedBox(height: 8),
//             buildRectangleContainer(Icons.handshake, 'Register as Partner'),
//
//           ],
//         ),
//       ],
//     );
//   }
//
//   Widget buildRectangleContainer(IconData icon, String title) {
//     return InkWell(
//       onTap: () {
//
//       },
//       child: Container(
//         height: 48,
//         width: double.infinity,
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(8),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.1),
//               blurRadius: 4,
//               offset: const Offset(0, 2),
//             ),
//           ],
//         ),
//         child: Row(
//           children: [
//             Icon(icon),
//             const SizedBox(width: 16),
//             Text(title),
//             const Spacer(),
//             const Icon(Icons.arrow_forward),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class IconContainer extends StatefulWidget {
//   final IconData icon;
//   final String text;
//
//   const IconContainer({
//     Key? key,
//     required this.icon,
//     required this.text,
//   }) : super(key: key);
//
//   @override
//   _IconContainerState createState() => _IconContainerState();
// }
//
// class _IconContainerState extends State<IconContainer> {
//   Color iconColor = Colors.black;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         InkWell(
//           onTap: () {
//             setState(() {
//               iconColor = Colors.brown;
//             });
//             // Handle click
//           },
//           child: Icon(
//             widget.icon,
//             color: iconColor,
//           ),
//         ),
//         const SizedBox(height: 8),
//         Text(widget.text),
//       ],
//     );
//   }
// }
//
//

import 'package:flutter/material.dart';
import 'package:freedom_car_solution/Screens/my_profile_screen.dart';
import 'setprefference_screen.dart';
import 'Refers&earn.dart';


class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  // late final _height = MediaQuery.of(context).size.height;
  // late final _width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Customer',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  Icons.flag,
                  size: 16,
                ),
                SizedBox(width: 4),
                Text(
                  '+91 9977887788',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                color: const Color.fromARGB(255, 230, 247, 255),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/order.png",
                            height: 40,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'Order History',
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/cars.png",
                            height: 40,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text('My Cars'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/help.png",
                            height: 40,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              'Help & Support',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ListTile(
              iconColor: Colors.blueAccent,
              title: Text("Profile"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_circle_right),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> (MyProfile()))),
            ),
            ListTile(
              iconColor: Colors.blueAccent,
              title: Text("Set Preferences"),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_circle_right),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> (SetPreferences()))),
            ),
            ListTile(
              iconColor: Colors.blueAccent,
              title: Text("Refer and Earn"),
              leading: Icon(Icons.wallet_giftcard),
              trailing: Icon(Icons.arrow_circle_right),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> (ReferAndEarnScreen()))),
            ),
            ListTile(
              iconColor: Colors.blueAccent,
              title: Text("Register as Partner"),
              leading: Icon(Icons.handshake),
              trailing: Icon(Icons.arrow_circle_right),
            ),


          ],
        ),
      ),
    );
  }
}