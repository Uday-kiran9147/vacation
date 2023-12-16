import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class GeoLacation_Widget extends StatefulWidget {
  const GeoLacation_Widget({super.key});

  @override
  State<GeoLacation_Widget> createState() => _GeoLacation_WidgetState();
}

class _GeoLacation_WidgetState extends State<GeoLacation_Widget> {
  // const GeoLacation_Widget({super.key});

  Position? position_user;

  fetchLocation() async {
    bool? serviceEnabled;
    LocationPermission? permissionUser;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    //if service_enabled ==false.
    if (!serviceEnabled) {
      Fluttertoast.showToast(msg: "Location service is Disabled");
    }
    permissionUser = await Geolocator.checkPermission();
    if (permissionUser == LocationPermission.denied) {
      permissionUser = await Geolocator.requestPermission();
      if (permissionUser == LocationPermission.denied) {
        Fluttertoast.showToast(msg: "You Denied The Location Permission");
      }
    }
    if (permissionUser == LocationPermission.deniedForever) {
      Fluttertoast.showToast(
          msg: "You Denied The Location Permission For-Ever ");
    }
    // getting the current location of a user.
    Position currentPosition = await Geolocator.getCurrentPosition();
    setState(() {
      position_user = currentPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Geo-Locator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 60,
                child: Center(
                    child: Text(position_user == null
                        ? "Location is not Enabled"
                        : position_user.toString()))),
            ElevatedButton(
              child: const Text("Get Location"),
              onPressed: () {
                fetchLocation();
              },
            )
          ],
        ),
      ),
    );
  }
}
