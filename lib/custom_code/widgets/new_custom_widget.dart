// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml; // Modified to use xml package
import 'package:google_maps_flutter_platform_interface/src/types/location.dart'
    as googleLatLng;
import 'package:flutter/services.dart' show rootBundle;

class KmlMapWidget extends StatefulWidget {
  @override
  _KmlMapWidgetState createState() => _KmlMapWidgetState();
}

class _KmlMapWidgetState extends State<KmlMapWidget> {
  GoogleMapController? _mapController;
  Set<Polygon> _polygons = {};

  @override
  void initState() {
    super.initState();
    _fetchKmlData();
  }

  Future<void> _fetchKmlData() async {
    try {
      // 使用 rootBundle.loadString 加载本地文件内容
      final String kmlContent =
          await rootBundle.loadString('assets/CashForTrashKML.kml');
      final document = xml.XmlDocument.parse(kmlContent);
      final placemarks = document.findAllElements('Placemark');

      setState(() {
        _polygons.clear();
        for (final placemark in placemarks) {
          final coordinates =
              placemark.findElements('coordinates').first.text.split(',');
          final points = coordinates
              .map((coord) => googleLatLng.LatLng(
                    double.parse(coord.split(',')[1]),
                    double.parse(coord.split(',')[0]),
                  ))
              .toList();
          _polygons.add(
            Polygon(
              polygonId: PolygonId(points.hashCode.toString()),
              points: points,
              fillColor: Colors.blue.withOpacity(0.5),
              strokeColor: Colors.blue,
              strokeWidth: 2,
            ),
          );
        }
      });

      if (_mapController != null) {
        _mapController
            ?.moveCamera(CameraUpdate.newLatLngBounds(_getBounds(), 50));
      }
    } catch (e) {
      print('Error fetching KML data: $e');
    }
  }

  LatLngBounds _getBounds() {
    googleLatLng.LatLng minPoint, maxPoint;
    minPoint = googleLatLng.LatLng(double.infinity, double.infinity);
    maxPoint = googleLatLng.LatLng(-double.infinity, -double.infinity);
    for (final polygon in _polygons) {
      for (final point in polygon.points) {
        if (point.latitude < minPoint.latitude ||
            point.longitude < minPoint.longitude) {
          minPoint = point;
        }
        if (point.latitude > maxPoint.latitude ||
            point.longitude > maxPoint.longitude) {
          maxPoint = point;
        }
      }
    }
    return LatLngBounds(southwest: minPoint, northeast: maxPoint);
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (controller) {
        _mapController = controller;
        _fetchKmlData();
      },
      initialCameraPosition: CameraPosition(
        target: googleLatLng.LatLng(1.3521, 103.8198),
        zoom: 11.0,
      ),
      polygons: _polygons,
    );
  }
}
