// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ListaTempStruct extends FFFirebaseStruct {
  ListaTempStruct({
    String? lerScan,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _lerScan = lerScan,
        super(firestoreUtilData);

  // "LerScan" field.
  String? _lerScan;
  String get lerScan => _lerScan ?? '';
  set lerScan(String? val) => _lerScan = val;

  bool hasLerScan() => _lerScan != null;

  static ListaTempStruct fromMap(Map<String, dynamic> data) => ListaTempStruct(
        lerScan: data['LerScan'] as String?,
      );

  static ListaTempStruct? maybeFromMap(dynamic data) => data is Map
      ? ListaTempStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'LerScan': _lerScan,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'LerScan': serializeParam(
          _lerScan,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListaTempStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListaTempStruct(
        lerScan: deserializeParam(
          data['LerScan'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListaTempStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListaTempStruct && lerScan == other.lerScan;
  }

  @override
  int get hashCode => const ListEquality().hash([lerScan]);
}

ListaTempStruct createListaTempStruct({
  String? lerScan,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListaTempStruct(
      lerScan: lerScan,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListaTempStruct? updateListaTempStruct(
  ListaTempStruct? listaTemp, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listaTemp
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListaTempStructData(
  Map<String, dynamic> firestoreData,
  ListaTempStruct? listaTemp,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listaTemp == null) {
    return;
  }
  if (listaTemp.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listaTemp.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listaTempData = getListaTempFirestoreData(listaTemp, forFieldValue);
  final nestedData = listaTempData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listaTemp.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListaTempFirestoreData(
  ListaTempStruct? listaTemp, [
  bool forFieldValue = false,
]) {
  if (listaTemp == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listaTemp.toMap());

  // Add any Firestore field values
  listaTemp.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListaTempListFirestoreData(
  List<ListaTempStruct>? listaTemps,
) =>
    listaTemps?.map((e) => getListaTempFirestoreData(e, true)).toList() ?? [];
