import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// void main() {
//   runApp(const SOS());
// }

class SOS extends StatelessWidget {
  const SOS({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        locationName: 'New York',
        locationAddress: '123 Main St',
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4, // Adjust the height of the map container
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(40.7128, -74.0060), // Replace with your map's initial location
                zoom: 12,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose Your Emergency Service',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Expanded(
                      child: ServiceContainer(
                        serviceName: 'Battery',
                      ),
                    ),
                    Expanded(
                      child: ServiceContainer(
                        serviceName: 'Fluid Leakage',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ServiceContainer(
                        serviceName: 'Engine',
                      ),
                    ),
                    Expanded(
                      child: ServiceContainer(
                        serviceName: 'Wheel-Lift',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ServiceContainer(
                        serviceName: 'Starter Issue',
                      ),
                    ),
                    Expanded(
                      child: ServiceContainer(
                        serviceName: 'Flat-Bed',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String locationName;
  final String locationAddress;

  const MyAppBar({
    Key? key,
    required this.locationName,
    required this.locationAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const Icon(Icons.location_on),
          const SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                locationName,
                style: const TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              Text(
                locationAddress,
                style: const TextStyle(fontSize: 14.0, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class ServiceContainer extends StatelessWidget {
  final String serviceName;

  const ServiceContainer({
    Key? key,
    required this.serviceName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            serviceName,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}