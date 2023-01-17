import 'package:app_with_map/widget/menu_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../const/app_constant.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng sourceLocation = const LatLng(23.731272, 90.429631);
  final LatLng destination = const LatLng(23.7508961,90.3842619);
  List <LatLng> polylineCoordinates = [];
  LocationData? currentLocation;
  void getCurrentLocation(){
    Location location = Location();
    location.getLocation().then((location){
      currentLocation = location;
    });
  }
  void getPolyPoints() async{
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        google_api_key,
        PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
        PointLatLng(destination.latitude, destination.longitude),
    );
    print(result.points);
    if (result.points.isNotEmpty){
      result.points.forEach(
        (PointLatLng point) => polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {

      });
    }
  }

  @override
  void initState(){
    getCurrentLocation();
    getPolyPoints();
    super.initState();
  }

   

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      backgroundColor: mainHexColor,
      appBar: AppBar(
        title: Text(
            user.email!,
        ),
      ),
      drawer: NavDrware(),
      body: currentLocation == null
      ? const Center(
        child: Text("loading"),
      )
      : GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: sourceLocation,
        zoom: 14.5,
      ),
        polylines: {
        Polyline(
          polylineId: PolylineId("route"),
          points: polylineCoordinates,
          color: Colors.black,
          width: 6,
        )
        },
        markers: {
        Marker(
          markerId: MarkerId("Current Location"),
          position: LatLng(
            currentLocation!.latitude!, currentLocation!.longitude!
          ),
        ),
        Marker(
          markerId: MarkerId("source"),
          position: sourceLocation,
        ),
        Marker(
          markerId: MarkerId("destination"),
          position: destination,
        ),
        },
      ),
    );
  }
}
