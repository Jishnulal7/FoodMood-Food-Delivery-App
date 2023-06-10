// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:google_maps/google_maps.dart';

// class GoogleMaps extends StatefulWidget {
//   GoogleMaps({super.key});

//   @override
//   State<GoogleMaps> createState() => _GoogleMapsState();
// }

// class _GoogleMapsState extends State<GoogleMaps> {
//   final Completer<GoogleMapController> _controller = Completer();

//   static const LatLng sourceLocation = LatLng(10.976036, 76.225441);
//   static const LatLng destination = LatLng(11.018160, 76.176727);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           centerTitle: true,
//           title: const Text(
//             'Google Maps',
//           ),
//         ),
//         body: Stack(
//           children: [
//             SizedBox(
//               height: MediaQuery.of(context).size.height,
//               width: double.infinity,
//               child: GoogleMap(
//                 myLocationEnabled: true,
//                 myLocationButtonEnabled: true,
//                 initialCameraPosition: const CameraPosition(
//                   target: LatLng(
//                     10.976036,
//                     76.225441,
//                   ),
//                   zoom: 13.5,
//                 ),
//                 markers: {
//                   const Marker(
//                     markerId: MarkerId(
//                       'source',
//                     ),
//                     position: sourceLocation,
//                   ),
//                   const Marker(
//                     markerId: MarkerId(
//                       'destination',
//                     ),
//                     position: destination,
//                   ),
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
