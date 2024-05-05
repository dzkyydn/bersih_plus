import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'transfer_page_widget.dart' show TransferPageWidget;
import 'package:flutter/material.dart';

class TransferPageModel extends FlutterFlowModel<TransferPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for receiverNIK widget.
  FocusNode? receiverNIKFocusNode;
  TextEditingController? receiverNIKTextController;
  String? Function(BuildContext, String?)? receiverNIKTextControllerValidator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // Stores action output result for [Backend Call - API (transferAPI)] action in Button widget.
  ApiCallResponse? apiResultTransfer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    receiverNIKFocusNode?.dispose();
    receiverNIKTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
