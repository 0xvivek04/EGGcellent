import '/flutter_flow/flutter_flow_util.dart';
import 'conncected_dvcs_widget.dart' show ConncectedDvcsWidget;
import 'package:flutter/material.dart';

class ConncectedDvcsModel extends FlutterFlowModel<ConncectedDvcsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue1;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue2;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue3;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
