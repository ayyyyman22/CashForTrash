import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import '/flutter_flow/custom_functions.dart' as functions;
import 'recycling_page_widget.dart' show RecyclingPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecyclingPageModel extends FlutterFlowModel<RecyclingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();
  // State field(s) for ClothingWeight widget.
  FocusNode? clothingWeightFocusNode;
  TextEditingController? clothingWeightController;
  String? Function(BuildContext, String?)? clothingWeightControllerValidator;
  // State field(s) for PlasticWeight widget.
  FocusNode? plasticWeightFocusNode;
  TextEditingController? plasticWeightController;
  String? Function(BuildContext, String?)? plasticWeightControllerValidator;
  // State field(s) for PaperWeight widget.
  FocusNode? paperWeightFocusNode;
  TextEditingController? paperWeightController;
  String? Function(BuildContext, String?)? paperWeightControllerValidator;
  // State field(s) for MetalWeight widget.
  FocusNode? metalWeightFocusNode;
  TextEditingController? metalWeightController;
  String? Function(BuildContext, String?)? metalWeightControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    clothingWeightFocusNode?.dispose();
    clothingWeightController?.dispose();

    plasticWeightFocusNode?.dispose();
    plasticWeightController?.dispose();

    paperWeightFocusNode?.dispose();
    paperWeightController?.dispose();

    metalWeightFocusNode?.dispose();
    metalWeightController?.dispose();
  }
}
