import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home17_calendar_widget.dart' show Home17CalendarWidget;
import 'package:flutter/material.dart';

class Home17CalendarModel extends FlutterFlowModel<Home17CalendarWidget> {
  ///  Local state fields for this page.

  List<String> entradasSaidas = [];
  void addToEntradasSaidas(String item) => entradasSaidas.add(item);
  void removeFromEntradasSaidas(String item) => entradasSaidas.remove(item);
  void removeAtIndexFromEntradasSaidas(int index) =>
      entradasSaidas.removeAt(index);
  void insertAtIndexInEntradasSaidas(int index, String item) =>
      entradasSaidas.insert(index, item);
  void updateEntradasSaidasAtIndex(int index, Function(String) updateFn) =>
      entradasSaidas[index] = updateFn(entradasSaidas[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ListarAutorizacao)] action in Home17Calendar widget.
  ApiCallResponse? listagem;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

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
