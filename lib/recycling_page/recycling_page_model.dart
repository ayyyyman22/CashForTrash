import '/flutter_flow/flutter_flow_util.dart';
import 'recycling_page_widget.dart' show RecyclingPageWidget;
import 'package:flutter/material.dart';

class RecyclingPageModel extends FlutterFlowModel<RecyclingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
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
