import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tela_permicao_entrada_saida_sepae_widget.dart'
    show TelaPermicaoEntradaSaidaSepaeWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class TelaPermicaoEntradaSaidaSepaeModel
    extends FlutterFlowModel<TelaPermicaoEntradaSaidaSepaeWidget> {
  ///  Local state fields for this page.

  String? nomeAluno;

  String? matriculaAluno;

  String? cursoAluno;

  ///  State fields for stateful widgets in this page.

  // State field(s) for nomeAluno widget.
  FocusNode? nomeAlunoFocusNode;
  TextEditingController? nomeAlunoTextController;
  String? Function(BuildContext, String?)? nomeAlunoTextControllerValidator;
  // State field(s) for matriculaAluno widget.
  FocusNode? matriculaAlunoFocusNode;
  TextEditingController? matriculaAlunoTextController;
  String? Function(BuildContext, String?)?
      matriculaAlunoTextControllerValidator;
  // State field(s) for cursoAluno widget.
  FocusNode? cursoAlunoFocusNode;
  TextEditingController? cursoAlunoTextController;
  String? Function(BuildContext, String?)? cursoAlunoTextControllerValidator;
  // State field(s) for motivo widget.
  FocusNode? motivoFocusNode;
  TextEditingController? motivoTextController;
  String? Function(BuildContext, String?)? motivoTextControllerValidator;
  // State field(s) for Entrada_saida widget.
  FormFieldController<String>? entradaSaidaValueController;
  // Stores action output result for [Backend Call - API (CriarAutorizacao)] action in Button widget.
  ApiCallResponse? apiResulta84;
  var escanerAluno = '';
  AudioPlayer? soundPlayer;
  // Stores action output result for [Backend Call - API (Buscar Aluno )] action in IconButton widget.
  ApiCallResponse? resultadoBuscarAluno;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeAlunoFocusNode?.dispose();
    nomeAlunoTextController?.dispose();

    matriculaAlunoFocusNode?.dispose();
    matriculaAlunoTextController?.dispose();

    cursoAlunoFocusNode?.dispose();
    cursoAlunoTextController?.dispose();

    motivoFocusNode?.dispose();
    motivoTextController?.dispose();
  }

  /// Additional helper methods.
  String? get entradaSaidaValue => entradaSaidaValueController?.value;
}
