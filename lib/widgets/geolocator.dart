// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:geolocator/geolocator.dart';

// class GeoLacation_Widget extends StatefulWidget {
//   @override
//   State<GeoLacation_Widget> createState() => _GeoLacation_WidgetState();
// }

// class _GeoLacation_WidgetState extends State<GeoLacation_Widget> {
//   // const GeoLacation_Widget({super.key});

//   Position? position_user;

//   fetchLocation() async {
//     bool? service_enabled;
//     LocationPermission? permission_user;

//     service_enabled = await Geolocator.isLocationServiceEnabled();
//     //if service_enabled ==false.
//     if (!service_enabled) {
//       Fluttertoast.showToast(msg: "Location service is Disabled");
//     }
//     permission_user = await Geolocator.checkPermission();
//     if (permission_user == LocationPermission.denied) {
//       permission_user = await Geolocator.requestPermission();
//       if (permission_user == LocationPermission.denied) {
//         Fluttertoast.showToast(msg: "You Denied The Location Permission");
//       }
//     }
//     if (permission_user == LocationPermission.deniedForever) {
//       Fluttertoast.showToast(
//           msg: "You Denied The Location Permission For-Ever ");
//     }
//     // getting the current location of a user.
//     Position current_position = await Geolocator.getCurrentPosition();
//     setState(() {
//       position_user = current_position;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Geo-Locator"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//                 height: 60,
//                 child: Center(
//                     child: Text(position_user == null
//                         ? "Location is not Enabled"
//                         : position_user.toString()))),
//             ElevatedButton(
//               child: Text("Get Location"),
//               onPressed: () {
//                 fetchLocation();
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
