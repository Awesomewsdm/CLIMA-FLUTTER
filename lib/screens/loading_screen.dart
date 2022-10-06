import 'package:clima/screens/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  LoadingScreenState createState() => LoadingScreenState();
}

class LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    getLocation();
    super.initState();
  }

  void getLocation() async {
    Location newLocation = Location();
    await newLocation.getCurrentLocation();
    // ignore: avoid_print
    print(newLocation.latitude);
    // ignore: avoid_print
    print(newLocation.longitude);
  }

  void getData () async{
    var url =
      Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
    // ignore: unused_local_variable
    http.Response response = await  http.get(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            getLocation();
            //Get the current location
          },
          child: const Text('Get Location'),
        ),
      ),
    );
  }
}
