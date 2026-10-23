import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'criar_conta_servidor_widget.dart' show CriarContaServidorWidget;
import 'package:flutter/material.dart';

class CriarContaServidorModel
    extends FlutterFlowModel<CriarContaServidorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SIAPE widget.
  FocusNode? siapeFocusNode;
  TextEditingController? siapeTextController;
  String? Function(BuildContext, String?)? siapeTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // State field(s) for ConfirmarSenha widget.
  FocusNode? confirmarSenhaFocusNode;
  TextEditingController? confirmarSenhaTextController;
  late bool confirmarSenhaVisibility;
  String? Function(BuildContext, String?)?
      confirmarSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
    confirmarSenhaVisibility = false;
  }

  @override
  void dispose() {
    siapeFocusNode?.dispose();
    siapeTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    confirmarSenhaFocusNode?.dispose();
    confirmarSenhaTextController?.dispose();
  }
}
