import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tela_carteirinha_widget.dart' show TelaCarteirinhaWidget;
import 'package:flutter/material.dart';

class TelaCarteirinhaModel extends FlutterFlowModel<TelaCarteirinhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
