import '/flutter_flow/flutter_flow_util.dart';
import 'f_a_q_page_widget.dart' show FAQPageWidget;
import 'package:flutter/material.dart';

class FAQPageModel extends FlutterFlowModel<FAQPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
