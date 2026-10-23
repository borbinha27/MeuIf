// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DatasInicioEfimStruct extends FFFirebaseStruct {
  DatasInicioEfimStruct({
    String? inicio,
    String? fim,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _inicio = inicio,
        _fim = fim,
        super(firestoreUtilData);

  // "inicio" field.
  String? _inicio;
  String get inicio => _inicio ?? '';
  set inicio(String? val) => _inicio = val;

  bool hasInicio() => _inicio != null;

  // "fim" field.
  String? _fim;
  String get fim => _fim ?? '';
  set fim(String? val) => _fim = val;

  bool hasFim() => _fim != null;

  static DatasInicioEfimStruct fromMap(Map<String, dynamic> data) =>
      DatasInicioEfimStruct(
        inicio: data['inicio'] as String?,
        fim: data['fim'] as String?,
      );

  static DatasInicioEfimStruct? maybeFromMap(dynamic data) => data is Map
      ? DatasInicioEfimStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'inicio': _inicio,
        'fim': _fim,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'inicio': serializeParam(
          _inicio,
          ParamType.String,
        ),
        'fim': serializeParam(
          _fim,
          ParamType.String,
        ),
      }.withoutNulls;

  static DatasInicioEfimStruct fromSerializableMap(Map<String, dynamic> data) =>
      DatasInicioEfimStruct(
        inicio: deserializeParam(
          data['inicio'],
          ParamType.String,
          false,
        ),
        fim: deserializeParam(
          data['fim'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DatasInicioEfimStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatasInicioEfimStruct &&
        inicio == other.inicio &&
        fim == other.fim;
  }

  @override
  int get hashCode => const ListEquality().hash([inicio, fim]);
}

DatasInicioEfimStruct createDatasInicioEfimStruct({
  String? inicio,
  String? fim,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DatasInicioEfimStruct(
      inicio: inicio,
      fim: fim,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DatasInicioEfimStruct? updateDatasInicioEfimStruct(
  DatasInicioEfimStruct? datasInicioEfim, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    datasInicioEfim
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDatasInicioEfimStructData(
  Map<String, dynamic> firestoreData,
  DatasInicioEfimStruct? datasInicioEfim,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (datasInicioEfim == null) {
    return;
  }
  if (datasInicioEfim.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && datasInicioEfim.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final datasInicioEfimData =
      getDatasInicioEfimFirestoreData(datasInicioEfim, forFieldValue);
  final nestedData =
      datasInicioEfimData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = datasInicioEfim.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDatasInicioEfimFirestoreData(
  DatasInicioEfimStruct? datasInicioEfim, [
  bool forFieldValue = false,
]) {
  if (datasInicioEfim == null) {
    return {};
  }
  final firestoreData = mapToFirestore(datasInicioEfim.toMap());

  // Add any Firestore field values
  datasInicioEfim.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDatasInicioEfimListFirestoreData(
  List<DatasInicioEfimStruct>? datasInicioEfims,
) =>
    datasInicioEfims
        ?.map((e) => getDatasInicioEfimFirestoreData(e, true))
        .toList() ??
    [];
