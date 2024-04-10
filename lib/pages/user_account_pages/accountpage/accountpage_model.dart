import '/flutter_flow/flutter_flow_util.dart';
import 'accountpage_widget.dart' show AccountpageWidget;
import 'package:flutter/material.dart';

class AccountpageModel extends FlutterFlowModel<AccountpageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
