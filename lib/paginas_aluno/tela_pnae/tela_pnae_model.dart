import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tela_pnae_widget.dart' show TelaPnaeWidget;
import 'package:flutter/material.dart';

class TelaPnaeModel extends FlutterFlowModel<TelaPnaeWidget> {
  ///  Local state fields for this page.
  /// pnae
  List<String> lanchePNAE = [];
  void addToLanchePNAE(String item) => lanchePNAE.add(item);
  void removeFromLanchePNAE(String item) => lanchePNAE.remove(item);
  void removeAtIndexFromLanchePNAE(int index) => lanchePNAE.removeAt(index);
  void insertAtIndexInLanchePNAE(int index, String item) =>
      lanchePNAE.insert(index, item);
  void updateLanchePNAEAtIndex(int index, Function(String) updateFn) =>
      lanchePNAE[index] = updateFn(lanchePNAE[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ObterCardapio)] action in TelaPnae widget.
  ApiCallResponse? apiResultjjr;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
