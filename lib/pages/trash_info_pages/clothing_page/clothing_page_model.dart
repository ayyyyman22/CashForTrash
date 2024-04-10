import '/flutter_flow/flutter_flow_util.dart';
import 'clothing_page_widget.dart' show ClothingPageWidget;
import 'package:flutter/material.dart';

class ClothingPageModel extends FlutterFlowModel<ClothingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
