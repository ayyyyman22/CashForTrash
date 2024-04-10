import '/flutter_flow/flutter_flow_util.dart';
import 'plastic_page_widget.dart' show PlasticPageWidget;
import 'package:flutter/material.dart';

class PlasticPageModel extends FlutterFlowModel<PlasticPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
