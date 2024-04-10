import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for email_to_register widget.
  FocusNode? emailToRegisterFocusNode;
  TextEditingController? emailToRegisterController;
  String? Function(BuildContext, String?)? emailToRegisterControllerValidator;
  // State field(s) for username_to_register widget.
  FocusNode? usernameToRegisterFocusNode;
  TextEditingController? usernameToRegisterController;
  String? Function(BuildContext, String?)?
      usernameToRegisterControllerValidator;
  // State field(s) for password_to_create widget.
  FocusNode? passwordToCreateFocusNode;
  TextEditingController? passwordToCreateController;
  late bool passwordToCreateVisibility;
  String? Function(BuildContext, String?)? passwordToCreateControllerValidator;
  // State field(s) for passwor_to_check widget.
  FocusNode? passworToCheckFocusNode;
  TextEditingController? passworToCheckController;
  late bool passworToCheckVisibility;
  String? Function(BuildContext, String?)? passworToCheckControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordToCreateVisibility = false;
    passworToCheckVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    emailToRegisterFocusNode?.dispose();
    emailToRegisterController?.dispose();

    usernameToRegisterFocusNode?.dispose();
    usernameToRegisterController?.dispose();

    passwordToCreateFocusNode?.dispose();
    passwordToCreateController?.dispose();

    passworToCheckFocusNode?.dispose();
    passworToCheckController?.dispose();
  }
}
