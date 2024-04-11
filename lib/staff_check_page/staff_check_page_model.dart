import '/flutter_flow/flutter_flow_util.dart';
import 'staff_check_page_widget.dart' show StaffCheckPageWidget;
import 'package:flutter/material.dart';

class StaffCheckPageModel extends FlutterFlowModel<StaffCheckPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
