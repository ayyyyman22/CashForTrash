import '/flutter_flow/flutter_flow_util.dart';
import 'metal_page_widget.dart' show MetalPageWidget;
import 'package:flutter/material.dart';

class MetalPageModel extends FlutterFlowModel<MetalPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
