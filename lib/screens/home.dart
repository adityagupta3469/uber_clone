import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class MyHomePage extends StatefulWidget {
	MyHomePage({Key key, this.title}) : super(key: key);
	
	final String title;
	
	@override
	    State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
	
	static double latitude = 40.7484405;
	static double longitude = -73.9878531;
	// 1
	Completer<GoogleMapController> _controller = Completer();
// 2
	static final CameraPosition _myLocation =CameraPosition(
		// 1
		target: LatLng(latitude, longitude),
		// 2
		zoom: 12,
	);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			// 1
			body: GoogleMap(
				// 2
				initialCameraPosition: _myLocation,
				// 3
				mapType: MapType.normal,
				// 4
				onMapCreated: (GoogleMapController controller) {
					_controller.complete(controller);
				},
			),
		);
		
	}
}
