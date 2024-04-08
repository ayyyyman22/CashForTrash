import '/flutter_flow/flutter_flow_util.dart';
import 'o_t_p_page_widget.dart' show OTPPageWidget;
import 'package:flutter/material.dart';

class OTPPageModel extends FlutterFlowModel<OTPPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
