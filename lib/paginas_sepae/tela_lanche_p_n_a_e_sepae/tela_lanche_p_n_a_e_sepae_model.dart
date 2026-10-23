import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'tela_lanche_p_n_a_e_sepae_widget.dart' show TelaLanchePNAESepaeWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TelaLanchePNAESepaeModel
    extends FlutterFlowModel<TelaLanchePNAESepaeWidget> {
  ///  Local state fields for this page.

  List<String> lanchePnae = [];
  void addToLanchePnae(String item) => lanchePnae.add(item);
  void removeFromLanchePnae(String item) => lanchePnae.remove(item);
  void removeAtIndexFromLanchePnae(int index) => lanchePnae.removeAt(index);
  void insertAtIndexInLanchePnae(int index, String item) =>
      lanchePnae.insert(index, item);
  void updateLanchePnaeAtIndex(int index, Function(String) updateFn) =>
      lanchePnae[index] = updateFn(lanchePnae[index]);

  List<String> adicionarlanche = [];
  void addToAdicionarlanche(String item) => adicionarlanche.add(item);
  void removeFromAdicionarlanche(String item) => adicionarlanche.remove(item);
  void removeAtIndexFromAdicionarlanche(int index) =>
      adicionarlanche.removeAt(index);
  void insertAtIndexInAdicionarlanche(int index, String item) =>
      adicionarlanche.insert(index, item);
  void updateAdicionarlancheAtIndex(int index, Function(String) updateFn) =>
      adicionarlanche[index] = updateFn(adicionarlanche[index]);

  String vigencia = '0000';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ObterCardapio)] action in telaLanchePNAESepae widget.
  ApiCallResponse? apiResultPNAE;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for lanche widget.
  FocusNode? lancheFocusNode;
  TextEditingController? lancheTextController;
  String? Function(BuildContext, String?)? lancheTextControllerValidator;
  // State field(s) for vigencia widget.
  FocusNode? vigenciaFocusNode;
  TextEditingController? vigenciaTextController;
  late MaskTextInputFormatter vigenciaMask;
  String? Function(BuildContext, String?)? vigenciaTextControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (CriarCardapio)] action in Button widget.
  ApiCallResponse? adicionando;
  var qrCodeResult = '';
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    lancheFocusNode?.dispose();
    lancheTextController?.dispose();

    vigenciaFocusNode?.dispose();
    vigenciaTextController?.dispose();
  }
}
