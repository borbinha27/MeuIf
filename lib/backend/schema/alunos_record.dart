import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlunosRecord extends FirestoreRecord {
  AlunosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "idUser" field.
  String? _idUser;
  String get idUser => _idUser ?? '';
  bool hasIdUser() => _idUser != null;

  // "matricula" field.
  String? _matricula;
  String get matricula => _matricula ?? '';
  bool hasMatricula() => _matricula != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "turma" field.
  String? _turma;
  String get turma => _turma ?? '';
  bool hasTurma() => _turma != null;

  // "userType" field.
  String? _userType;
  String get userType => _userType ?? '';
  bool hasUserType() => _userType != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _idUser = snapshotData['idUser'] as String?;
    _matricula = snapshotData['matricula'] as String?;
    _nome = snapshotData['nome'] as String?;
    _turma = snapshotData['turma'] as String?;
    _userType = snapshotData['userType'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alunos');

  static Stream<AlunosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlunosRecord.fromSnapshot(s));

  static Future<AlunosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlunosRecord.fromSnapshot(s));

  static AlunosRecord fromSnapshot(DocumentSnapshot snapshot) => AlunosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlunosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlunosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlunosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlunosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlunosRecordData({
  String? email,
  String? idUser,
  String? matricula,
  String? nome,
  String? turma,
  String? userType,
  String? photoUrl,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'idUser': idUser,
      'matricula': matricula,
      'nome': nome,
      'turma': turma,
      'userType': userType,
      'photo_url': photoUrl,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlunosRecordDocumentEquality implements Equality<AlunosRecord> {
  const AlunosRecordDocumentEquality();

  @override
  bool equals(AlunosRecord? e1, AlunosRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.idUser == e2?.idUser &&
        e1?.matricula == e2?.matricula &&
        e1?.nome == e2?.nome &&
        e1?.turma == e2?.turma &&
        e1?.userType == e2?.userType &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(AlunosRecord? e) => const ListEquality().hash([
        e?.email,
        e?.idUser,
        e?.matricula,
        e?.nome,
        e?.turma,
        e?.userType,
        e?.photoUrl,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is AlunosRecord;
}
