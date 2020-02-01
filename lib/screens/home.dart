import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class MyHomePage extends StatefulWidget {
	MyHomePage({Key key, this.title}) : super(key: key);
	
	// This widget is the home page of your application. It is stateful, meaning
	// that it has a State object (defined below) that contains fields that affect
	// how it looks.
	
	// This class is the configuration for the state. It holds the values (in this
	// case the title) provided by the parent (in this case the App widget) and
	// used by the build method of the State. Fields in a Widget subclass are
	// always marked "final".
	
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
