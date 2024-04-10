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

import 'package:cash_for_trash/flutter_flow/flutter_flow_google_map.dart';
import 'package:google_maps/google_maps.dart';

class Kml {
  ///FILE 1 OR 2
  Future<Map<PolylineId, Polyline>> loadKML(int numfile) async {
    print("============================LOAD KML==============================");
    final newPolylines = Map<PolylineId, Polyline>.from({});
    final file = await getJson(numfile);
    if (file == null) {
      return newPolylines;
    }

    final data = await parseKML(file).catchError((error) {
      print(error);
      return newPolylines;
    });

    if (data != null) {
      data.forEach((element) {
        PolylineId polylineId = PolylineId(element.id);
        final newPolyline = Polyline(
          polylineId: polylineId,
          points: element.coordinates,
          jointType: JointType.round,
          width: 3,
          color: Colors.blue,
          consumeTapEvents: true,
          onTap: () {
            print('click');
          },
        );
        newPolylines[polylineId] = newPolyline;
      });
      return newPolylines;
    } else {
      return newPolylines;
    }
  }

  Future<String> getJson(int file) {
    switch (file) {
      case 1:
        return rootBundle.loadString('assets/kml/kml1.kml');
        break;
      case 2:
        return rootBundle.loadString('assets/kml/kml2.kml');
        break;
      default:
        return null;
    }
  }

  Future<List<Placemarkml>> parseKML(String data) async {
    var doc = XmlDocument.parse(data).rootElement;
    if (doc.name.toString() != 'kml') {
      throw ("ERROR: the file is not a KML compatible file");
    }

    List<Placemarkml> resp = [];
    var elements = doc.findAllElements("Placemark");
    int cont = 0;
    elements.forEach((element) {
      cont++;
      String name = element.getElement('name').text;
      String altitudeMode = element
          .getElement('LookAt')
          .getElement('gx:altitudeMode')
          .text
          .toUpperCase()
          .trim();
      bool valid = altitudeMode == 'RELATIVETOSEAFLOOR' ? true : false;
      if (!valid) {
        resp.add(Placemarkml(
          id: "Placemark$cont",
          name: name,
          altitudeMode: altitudeMode,
          coordinates: [],
          valid: false,
        ));
      } else {
        List<LatLng> points = [];
        final coordinates =
            element.findAllElements('coordinates').first.text.trim().split(' ');
        coordinates.forEach((element) {
          final dat = element.toString().split(",");
          double lat = double.parse(dat[1].toString());
          double lng = double.parse(dat[0].toString());
          points.add(LatLng(lat, lng));
        });
        resp.add(Placemarkml(
          id: "Placemark$cont",
          name: name,
          altitudeMode: altitudeMode,
          coordinates: points,
        ));
      }
    });
    return resp;
  }
}

class Placemarkml {
  String id;
  String name;
  String altitudeMode;
  List<LatLng> coordinates;
  bool valid;
  Placemarkml(
      {this.id,
      this.name,
      this.altitudeMode,
      this.coordinates,
      this.valid = true});
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
