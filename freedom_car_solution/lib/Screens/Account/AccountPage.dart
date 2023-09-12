import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

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
                  '+123456789',
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
      body: const SingleChildScrollView(
        child: HeaderWidget(),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white10,
          padding: const EdgeInsets.all(16.0),
        ),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconContainer(
                  icon: Icons.history,
                  text: 'Order History',
                ),
              ],
            ),
            Column(
              children: [
                IconContainer(
                  icon: Icons.car_rental,
                  text: 'My Cars',
                ),
              ],
            ),
            Column(
              children: [
                IconContainer(
                  icon: Icons.verified_user,
                  text: 'Help & Support',
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Divider(height: 30,),
        Column(
          children: [
            buildRectangleContainer(Icons.email, 'Email'),
            const SizedBox(height: 8),
            buildRectangleContainer(Icons.phone, 'Phone'),
            const SizedBox(height: 8),
            buildRectangleContainer(Icons.location_on, 'Address'),

            const Divider(height: 30,),
            const SizedBox(height: 8),
            buildRectangleContainer(Icons.person, 'Profile'),
            const SizedBox(height: 8),
            buildRectangleContainer(Icons.settings, 'Set Preferences'),
            const SizedBox(height: 8),
            buildRectangleContainer(Icons.document_scanner_outlined, 'Activate OBD'),
            const SizedBox(height: 8),
            buildRectangleContainer(Icons.card_giftcard, 'Refer and Earn'),
            const SizedBox(height: 8),
            buildRectangleContainer(Icons.handshake, 'Register as Partner'),

          ],
        ),
      ],
    );
  }

  Widget buildRectangleContainer(IconData icon, String title) {
    return InkWell(
      onTap: () {
        // Handle container click
      },
      child: Container(
        height: 48,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 16),
            Text(title),
            const Spacer(),
            const Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}

class IconContainer extends StatefulWidget {
  final IconData icon;
  final String text;

  const IconContainer({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  _IconContainerState createState() => _IconContainerState();
}

class _IconContainerState extends State<IconContainer> {
  Color iconColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              iconColor = Colors.brown;
            });
            // Handle click
          },
          child: Icon(
            widget.icon,
            color: iconColor,
          ),
        ),
        const SizedBox(height: 8),
        Text(widget.text),
      ],
    );
  }
}