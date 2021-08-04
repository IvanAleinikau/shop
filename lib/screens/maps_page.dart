import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  LatLng endLoc = LatLng(52.08823582961075, 23.68843269527837);

  static const endLatitude = 52.08823582961075;
  static const endLongitude = 23.68843269527837;


  static const _initialCameraPosition = CameraPosition(
      target: LatLng(endLatitude, endLongitude), zoom: 15);

  Completer<GoogleMapController> _controller = Completer();

  Set<Polyline>_polyline={};

  late Marker start;
  late Marker end;

  Set<Marker> _markers ={ };

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
    setMarkers();
  }

  Future<void> moveCamera() async {
    final GoogleMapController controller = await _controller.future;
    controller.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(endLatitude, endLongitude),
      zoom: 15,
    )));
  }

  Future<void> zoomIn() async {
    final GoogleMapController controller = await _controller.future;
    controller.moveCamera(CameraUpdate.zoomIn());
  }

  Future<void> zoomOut() async {
    final GoogleMapController controller = await _controller.future;
    controller.moveCamera(CameraUpdate.zoomOut());
  }

  setMarkers() {
    _markers.add(end = Marker(
      markerId: MarkerId("Destination"),
      position: LatLng(endLatitude, endLongitude),
      infoWindow: InfoWindow(
        title: "Vinyl record shop",
        snippet: "5 star ratted place",
      ),
    ));
    setState(() {});
  }

  _handleTap(LatLng point) {
    setState(() {
      if(_markers.length==2){
        _markers.remove(start);
        _markers.add(start = Marker(
          markerId: MarkerId(point.toString()),
          position: point,
          icon:
          BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta),
        ));
      //  _createPolylines(start.position.latitude, start.position.longitude, end.position.latitude, end.position.longitude);
       LatLng startLoc = LatLng(start.position.latitude, start.position.longitude);
        List<LatLng> latlng = [endLoc,startLoc];
        _polyline.add(Polyline(
            polylineId: PolylineId(''),
          visible: true,
          points: latlng,
          color: Colors.blue
        ));
      }else{
        _markers.add(start = Marker(
          markerId: MarkerId(point.toString()),
          position: point,
          icon:
          BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta),
        ));
        LatLng startLoc = LatLng(start.position.latitude, start.position.longitude);
        List<LatLng> latlng = [endLoc,startLoc];
        _polyline.add(Polyline(
            polylineId: PolylineId(''),
            visible: true,
            points: latlng,
            color: Colors.blue
        ));
      }
    });
  }
  late LatLng _center ;
  late Position currentLocation;

  @override
  void initState() {
    super.initState();
    getUserLocation();
  }

  Future<Position> locateUser() async {
    return Geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  getUserLocation() async {
    currentLocation = await locateUser();
    setState(() {
      _center = LatLng(currentLocation.latitude, currentLocation.longitude);
    });
    print('center $_center');
  }

  late PolylinePoints polylinePoints;
  List<LatLng> polylineCoordinates = [];
  Map<PolylineId, Polyline> polylines = {};

  _createPolylines(
      double startLatitude,
      double startLongitude,
      double destinationLatitude,
      double destinationLongitude,
      ) async {

    polylinePoints = PolylinePoints();

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyAVsenPAwkbXo44wluSIRpRT-_WnSRuKzk", // Google Maps API Key
      PointLatLng(startLatitude, startLongitude),
      PointLatLng(destinationLatitude, destinationLongitude),
      travelMode: TravelMode.transit,
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    PolylineId id = PolylineId('poly');

    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: polylineCoordinates,
      width: 3,
    );

    polylines[id] = polyline;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.black54,
      ),
      body: Stack(
        children: [
          GoogleMap(
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            zoomControlsEnabled: false,
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: _onMapCreated,
            markers: _markers,
            polylines: _polyline,
           //Set<Polyline>.of(polylines.values),
            onTap: _handleTap,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipOval(
                    child: Material(
                      color: Colors.transparent, // button color
                      child: InkWell(
                        splashColor: Colors.blueGrey, // inkwell color
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.add),
                        ),
                        onTap: () {
                          zoomIn();
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ClipOval(
                    child: Material(
                      color: Colors.transparent, // button color
                      child: InkWell(
                        splashColor: Colors.blueGrey, // inkwell color
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.remove),
                        ),
                        onTap: () {
                          zoomOut();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black54,
        foregroundColor: Colors.black,
        onPressed: () {
          moveCamera();
        },
        child: Icon(Icons.center_focus_strong),
      ),
    );
  }
}
