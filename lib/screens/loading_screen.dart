import 'package:clima/screens/location.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter/material.dart';

const apiKey = '80486398e37b6a147c0baad6efa7bd09';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  LoadingScreenState createState() => LoadingScreenState();
}

class LoadingScreenState extends State<LoadingScreen> {
  double? latitude;
  double? longitude;
  @override
  void initState() {
    getLocationData();
    super.initState();
  }

  void getLocationData() async {
    Location newLocation = Location();
    await newLocation.getCurrentLocation();
    latitude = newLocation.latitude!;
    longitude = newLocation.longitude!;

    NetworkHelper networkHelper = NetworkHelper();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}


 // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       getLocation();
      //       //Get the current location
      //     },
      //     child: const Text('Get Location'),
      //   ),
      // ),
