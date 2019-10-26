import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:location/location.dart' as loc;

///////////////////////////////////////////////////////////////////////////////
class PageOne extends StatefulWidget {
  @override
  createState() => _PageOneState();
}
class _PageOneState extends State<PageOne> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _getPositionSubscription.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext vvv) {
    return Scaffold(
      appBar: widgetAppBar(),
      body: widgetBody(vvv),
    );
  }
  widgetAppBar() {
    return AppBar(
      title: Text("PageOne"),
    );
  }
  widgetBody(BuildContext ccc) {
    return FlutterMap(
      mapController: mapController,
      options: new MapOptions(
          center: listPoints[0],
          zoom: zoomMap,
          onTap: _handleTap),
      layers: [
        new TileLayerOptions(
          urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
        ),
        new MarkerLayerOptions(markers: listMarker),
        new OverlayImageLayerOptions(overlayImages: <OverlayImage>[
          new OverlayImage(
              bounds: LatLngBounds(LatLng(51.5, -0.09), LatLng(48.8566, 2.3522)),
              opacity: 0.8,
              imageProvider: NetworkImage(
                  'https://images.pexels.com/photos/231009/pexels-photo-231009.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=300&w=600')),
        ]),
        new PolylineLayerOptions(
          polylines: [
            new Polyline(
                points: listPoints,
                strokeWidth: 4.0,
                color: Colors.purple),
          ],
        ),
        new CircleLayerOptions(circles: listCircleMarker)
      ],
    );
  }

  StreamSubscription _getPositionSubscription;
  void _handleTap(LatLng latlng) async {
    var pos = await location.getLocation();
    mapController.move(LatLng(pos.latitude, pos.longitude), zoomMap);
    setState(() {
      if(listMarker.length==0)addMarkToList(LatLng(pos.latitude, pos.longitude));
      else {
        listMarker[0].point.latitude = latlng.latitude;
        listMarker[0].point.longitude = latlng.longitude;
      }
    });
    _getPositionSubscription = location.onLocationChanged().listen((currentLocation) {
      print("${currentLocation.latitude}   ${currentLocation.longitude}" );
    });
  }
  double zoomMap =5;
  MapController mapController = new MapController();
}
var location = new loc.Location();
////////////////////////////////////////////////////////////////////////
List<Marker> listMarker = [];
addMarkToList(LatLng p_lat_lgt){
  listMarker.add(addMarck(p_lat_lgt));
}
addMarck(LatLng p_lat_lgt){
  return Marker(
    width: 80.0,
    height: 80.0,
    point: p_lat_lgt,
    builder: (ctx) =>  Container(
      color: Colors.amber.withOpacity(0.5),
    ),
  );
}
////////////////////////////////////////////////////////////////////////
List<CircleMarker> listCircleMarker = [
  addCircleMarker(p_LatLang: listPoints[3]),
];
addCircleMarker({LatLng p_LatLang}){
  return CircleMarker(
      point: p_LatLang,
      color: Colors.blue.withOpacity(0.7),
      useRadiusInMeter: true,
      radius: 2000 // 2000 meters | 2 km
  );
}
////////////////////////////////////////////////////////////////////////
List<LatLng> listPoints =[
  LatLng(36.7681961,3.0404258),//algerCenter
  LatLng(51.5, -0.09),//london
  LatLng(48.8566, 2.3522),//paris
  LatLng(53.3498, -6.2603),//dublin
];
////////////////////////////////////////////////////////////////////////
/*
https://pub.dev/packages/location#-readme-tab-
 *************
 pubspec.yaml:->
 flutter_map: ^0.7.3
 location: ^2.3.5
 *************
 AndroidManifest.xml :->
 <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
 *************
 gradle.properties:->
 android.enableJetifier=true
 android.useAndroidX=true
 org.gradle.jvmargs=-Xmx1536M
 *************
 build.gradle:->
 dependencies {
      classpath 'com.google.gms:google-services:4.2.0'
  }
 */
////////////////////////////////////////////////////////////////////////