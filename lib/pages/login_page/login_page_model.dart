import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for numberNIK widget.
  FocusNode? numberNIKFocusNode;
  TextEditingController? numberNIKTextController;
  String? Function(BuildContext, String?)? numberNIKTextControllerValidator;
  // State field(s) for passwordCreate widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // Stores action output result for [Backend Call - API (loginAPI)] action in Button widget.
  ApiCallResponse? apiResult5a0;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    numberNIKFocusNode?.dispose();
    numberNIKTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();
  }
}
