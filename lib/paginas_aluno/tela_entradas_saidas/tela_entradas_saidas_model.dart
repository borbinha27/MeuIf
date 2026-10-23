import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tela_entradas_saidas_widget.dart' show TelaEntradasSaidasWidget;
import 'package:flutter/material.dart';

class TelaEntradasSaidasModel
    extends FlutterFlowModel<TelaEntradasSaidasWidget> {
  ///  Local state fields for this page.

  dynamic currentApiResponse;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Entradas)] action in TelaEntradasSaidas widget.
  ApiCallResponse? apiR;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Stores action output result for [Backend Call - API (Entradas)] action in Calendar widget.
  ApiCallResponse? apiResulty7e;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
