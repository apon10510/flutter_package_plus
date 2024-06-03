// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// class GeolocatorFlutter extends StatefulWidget {
//   const GeolocatorFlutter({super.key});

//   @override
//   State<GeolocatorFlutter> createState() => _GeolocatorFlutterState();
// }

// class _GeolocatorFlutterState extends State<GeolocatorFlutter> {
//   var lo;
//   var la;

//   void getLocation() async {
//     LocationPermission permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied ||
//         permission == LocationPermission.deniedForever) {
//       LocationPermission asked = await Geolocator.requestPermission();
//     } else {
//       Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.best,
//       );
//       setState(() {
//         lo = position.longitude;
//         la = position.latitude;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   getLocation();
//                 },
//                 child: const Text('Location'),
//               ),
//               SelectableText('$lo,$la'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
