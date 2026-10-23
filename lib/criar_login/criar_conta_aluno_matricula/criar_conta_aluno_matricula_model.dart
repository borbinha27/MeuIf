import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'criar_conta_aluno_matricula_widget.dart'
    show CriarContaAlunoMatriculaWidget;
import 'package:flutter/material.dart';

class CriarContaAlunoMatriculaModel
    extends FlutterFlowModel<CriarContaAlunoMatriculaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for matricula widget.
  FocusNode? matriculaFocusNode;
  TextEditingController? matriculaTextController;
  late bool matriculaVisibility;
  String? Function(BuildContext, String?)? matriculaTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for Confirmpassword widget.
  FocusNode? confirmpasswordFocusNode;
  TextEditingController? confirmpasswordTextController;
  late bool confirmpasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmpasswordTextControllerValidator;
  // Stores action output result for [Backend Call - API (Registrar)] action in Button widget.
  ApiCallResponse? apiResultm4u;

  @override
  void initState(BuildContext context) {
    matriculaVisibility = false;
    passwordVisibility = false;
    confirmpasswordVisibility = false;
  }

  @override
  void dispose() {
    matriculaFocusNode?.dispose();
    matriculaTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmpasswordFocusNode?.dispose();
    confirmpasswordTextController?.dispose();
  }
}
