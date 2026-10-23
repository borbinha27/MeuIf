import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tela_agenda_widget.dart' show TelaAgendaWidget;
import 'package:flutter/material.dart';

class TelaAgendaModel extends FlutterFlowModel<TelaAgendaWidget> {
  ///  Local state fields for this page.

  List<String> gambiarrrada = [];
  void addToGambiarrrada(String item) => gambiarrrada.add(item);
  void removeFromGambiarrrada(String item) => gambiarrrada.remove(item);
  void removeAtIndexFromGambiarrrada(int index) => gambiarrrada.removeAt(index);
  void insertAtIndexInGambiarrrada(int index, String item) =>
      gambiarrrada.insert(index, item);
  void updateGambiarrradaAtIndex(int index, Function(String) updateFn) =>
      gambiarrrada[index] = updateFn(gambiarrrada[index]);

  List<String> entradaousaida = [];
  void addToEntradaousaida(String item) => entradaousaida.add(item);
  void removeFromEntradaousaida(String item) => entradaousaida.remove(item);
  void removeAtIndexFromEntradaousaida(int index) =>
      entradaousaida.removeAt(index);
  void insertAtIndexInEntradaousaida(int index, String item) =>
      entradaousaida.insert(index, item);
  void updateEntradaousaidaAtIndex(int index, Function(String) updateFn) =>
      entradaousaida[index] = updateFn(entradaousaida[index]);

  dynamic currentApiResponse;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ListagemDeEventos)] action in TelaAgenda widget.
  ApiCallResponse? apiAgenda;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Stores action output result for [Backend Call - API (ListagemDeEventos)] action in Calendar widget.
  ApiCallResponse? apiResultjo9;

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
