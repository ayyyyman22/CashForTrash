import '/flutter_flow/flutter_flow_util.dart';
import 'home_page2_widget.dart' show HomePage2Widget;
import 'package:flutter/material.dart';

class HomePage2Model extends FlutterFlowModel<HomePage2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
