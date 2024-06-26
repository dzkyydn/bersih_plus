import '/flutter_flow/flutter_flow_util.dart';
import 'page_widget.dart' show PageWidget;
import 'package:flutter/material.dart';

class PageModel extends FlutterFlowModel<PageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
