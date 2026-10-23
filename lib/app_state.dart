import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _leituradoScan = prefs
              .getStringList('ff_leituradoScan')
              ?.map((x) {
                try {
                  return ListaTempStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _leituradoScan;
    });
    _safeInit(() {
      _LeitorDoPorteiro = prefs
              .getStringList('ff_LeitorDoPorteiro')
              ?.map((x) {
                try {
                  return ListaTempStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _LeitorDoPorteiro;
    });
    _safeInit(() {
      _Matricula = prefs.getString('ff_Matricula') ?? _Matricula;
    });
    _safeInit(() {
      _Turma = prefs.getString('ff_Turma') ?? _Turma;
    });
    _safeInit(() {
      _Nome = prefs.getString('ff_Nome') ?? _Nome;
    });
    _safeInit(() {
      _BDTESTE = prefs.getString('ff_BDTESTE') ?? _BDTESTE;
    });
    _safeInit(() {
      _PrimeiraTela = prefs.getBool('ff_PrimeiraTela') ?? _PrimeiraTela;
    });
    _safeInit(() {
      _userType = prefs.getString('ff_userType') ?? _userType;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  /// QRCODE
  List<ListaTempStruct> _leituradoScan = [];
  List<ListaTempStruct> get leituradoScan => _leituradoScan;
  set leituradoScan(List<ListaTempStruct> value) {
    _leituradoScan = value;
    prefs.setStringList(
        'ff_leituradoScan', value.map((x) => x.serialize()).toList());
  }

  void addToLeituradoScan(ListaTempStruct value) {
    leituradoScan.add(value);
    prefs.setStringList(
        'ff_leituradoScan', _leituradoScan.map((x) => x.serialize()).toList());
  }

  void removeFromLeituradoScan(ListaTempStruct value) {
    leituradoScan.remove(value);
    prefs.setStringList(
        'ff_leituradoScan', _leituradoScan.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromLeituradoScan(int index) {
    leituradoScan.removeAt(index);
    prefs.setStringList(
        'ff_leituradoScan', _leituradoScan.map((x) => x.serialize()).toList());
  }

  void updateLeituradoScanAtIndex(
    int index,
    ListaTempStruct Function(ListaTempStruct) updateFn,
  ) {
    leituradoScan[index] = updateFn(_leituradoScan[index]);
    prefs.setStringList(
        'ff_leituradoScan', _leituradoScan.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInLeituradoScan(int index, ListaTempStruct value) {
    leituradoScan.insert(index, value);
    prefs.setStringList(
        'ff_leituradoScan', _leituradoScan.map((x) => x.serialize()).toList());
  }

  /// QRCODE
  List<ListaTempStruct> _LeitorDoPorteiro = [];
  List<ListaTempStruct> get LeitorDoPorteiro => _LeitorDoPorteiro;
  set LeitorDoPorteiro(List<ListaTempStruct> value) {
    _LeitorDoPorteiro = value;
    prefs.setStringList(
        'ff_LeitorDoPorteiro', value.map((x) => x.serialize()).toList());
  }

  void addToLeitorDoPorteiro(ListaTempStruct value) {
    LeitorDoPorteiro.add(value);
    prefs.setStringList('ff_LeitorDoPorteiro',
        _LeitorDoPorteiro.map((x) => x.serialize()).toList());
  }

  void removeFromLeitorDoPorteiro(ListaTempStruct value) {
    LeitorDoPorteiro.remove(value);
    prefs.setStringList('ff_LeitorDoPorteiro',
        _LeitorDoPorteiro.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromLeitorDoPorteiro(int index) {
    LeitorDoPorteiro.removeAt(index);
    prefs.setStringList('ff_LeitorDoPorteiro',
        _LeitorDoPorteiro.map((x) => x.serialize()).toList());
  }

  void updateLeitorDoPorteiroAtIndex(
    int index,
    ListaTempStruct Function(ListaTempStruct) updateFn,
  ) {
    LeitorDoPorteiro[index] = updateFn(_LeitorDoPorteiro[index]);
    prefs.setStringList('ff_LeitorDoPorteiro',
        _LeitorDoPorteiro.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInLeitorDoPorteiro(int index, ListaTempStruct value) {
    LeitorDoPorteiro.insert(index, value);
    prefs.setStringList('ff_LeitorDoPorteiro',
        _LeitorDoPorteiro.map((x) => x.serialize()).toList());
  }

  String _Matricula = '';
  String get Matricula => _Matricula;
  set Matricula(String value) {
    _Matricula = value;
    prefs.setString('ff_Matricula', value);
  }

  String _Turma = '';
  String get Turma => _Turma;
  set Turma(String value) {
    _Turma = value;
    prefs.setString('ff_Turma', value);
  }

  String _Nome = '';
  String get Nome => _Nome;
  set Nome(String value) {
    _Nome = value;
    prefs.setString('ff_Nome', value);
  }

  String _BDTESTE = 'a';
  String get BDTESTE => _BDTESTE;
  set BDTESTE(String value) {
    _BDTESTE = value;
    prefs.setString('ff_BDTESTE', value);
  }

  bool _PrimeiraTelaSolucao = true;
  bool get PrimeiraTelaSolucao => _PrimeiraTelaSolucao;
  set PrimeiraTelaSolucao(bool value) {
    _PrimeiraTelaSolucao = value;
  }

  bool _PrimeiraTela = false;
  bool get PrimeiraTela => _PrimeiraTela;
  set PrimeiraTela(bool value) {
    _PrimeiraTela = value;
    prefs.setBool('ff_PrimeiraTela', value);
  }

  bool _carterinhaGambiarra = true;
  bool get carterinhaGambiarra => _carterinhaGambiarra;
  set carterinhaGambiarra(bool value) {
    _carterinhaGambiarra = value;
  }

  bool _Logado = false;
  bool get Logado => _Logado;
  set Logado(bool value) {
    _Logado = value;
  }

  String _userType = '';
  String get userType => _userType;
  set userType(String value) {
    _userType = value;
    prefs.setString('ff_userType', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
