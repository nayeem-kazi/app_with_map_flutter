import 'package:flutter/material.dart';

import '../const/app_constant.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainHexColor,
      appBar: AppBar(
        title: Text(
            "This is Home Page"
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            
          )
      ),
    );
  }
}
