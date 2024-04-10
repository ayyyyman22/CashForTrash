import '/flutter_flow/flutter_flow_util.dart';
import 'paper_page_widget.dart' show PaperPageWidget;
import 'package:flutter/material.dart';

class PaperPageModel extends FlutterFlowModel<PaperPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
