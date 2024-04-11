import '/flutter_flow/flutter_flow_util.dart';
import 'recycle_station_page_widget.dart' show RecycleStationPageWidget;
import 'package:flutter/material.dart';

class RecycleStationPageModel
    extends FlutterFlowModel<RecycleStationPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
