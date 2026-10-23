import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Cardapio Group Code

class CardapioGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://bcsgg4swgk40owc0swosc8go.apps.cascavel.ifpr.edu.br/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static CriarCardapioCall criarCardapioCall = CriarCardapioCall();
  static ObterCardapioCall obterCardapioCall = ObterCardapioCall();
  static LisgemDeCardapiosCall lisgemDeCardapiosCall = LisgemDeCardapiosCall();
  static DeletarCardapioCall deletarCardapioCall = DeletarCardapioCall();
}

class CriarCardapioCall {
  Future<ApiCallResponse> call({
    List<String>? itensList,
    String? vigencia = '',
    String? token = '',
  }) async {
    final baseUrl = CardapioGroup.getBaseUrl(
      token: token,
    );
    final itens = _serializeList(itensList);

    final ffApiRequestBody = '''
{
  "itens": ${itens},
  "vigencia": "${escapeStringForJson(vigencia)}T00:00:00-03:00"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CriarCardapio',
      apiUrl: '${baseUrl}/cardapio',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ObterCardapioCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = CardapioGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ObterCardapio',
      apiUrl: '${baseUrl}/cardapio',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LisgemDeCardapiosCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = CardapioGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'LisgemDeCardapios',
      apiUrl: '${baseUrl}/cardapio/all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletarCardapioCall {
  Future<ApiCallResponse> call({
    String? cardapioID = '',
    String? token = '',
  }) async {
    final baseUrl = CardapioGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DeletarCardapio',
      apiUrl: '${baseUrl}/cardapio/${cardapioID}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Cardapio Group Code

/// Start Agenda Group Code

class AgendaGroup {
  static String getBaseUrl({
    String? token =
        'eyJhbGciOiJSUzI1NiIsImtpZCI6IjdlYTA5ZDA1NzI2MmU2M2U2MmZmNzNmMDNlMDRhZDI5ZDg5Zjg5MmEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vbWV1LWktZi1hLXAtay1vdzlxaHIiLCJhdWQiOiJtZXUtaS1mLWEtcC1rLW93OXFociIsImF1dGhfdGltZSI6MTc2MTY3MTE3OSwidXNlcl9pZCI6IjdmaUxHU3d4VkVhbUZKc29nbHVXTjc2TXIyejIiLCJzdWIiOiI3ZmlMR1N3eFZFYW1GSnNvZ2x1V043Nk1yMnoyIiwiaWF0IjoxNzYxNjgxMDgzLCJleHAiOjE3NjE2ODQ2ODMsImVtYWlsIjoiMjAyMzMwMzU0OTJAZXN0dWRhbnRlcy5pZnByLmVkdS5iciIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJlbWFpbCI6WyIyMDIzMzAzNTQ5MkBlc3R1ZGFudGVzLmlmcHIuZWR1LmJyIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.hth66h6GCQM-XxGA5gxmIrNYpVdXMuhXjG6RoiuqHt_wyCsSqZuTKKqq7rp9NFOKyTxwv4aV0KO8IAV-bgv7ZXlPacLvH2uIcuqyiTFc8Ger-zssZc2BzBGXCdpSeO_VNyx3_T5JJOUa8gqYRFSXfLOW3zUmbbzm4wtyHPsNrrYqszI8ENoO_c6tjHRGp7CB9zR_gf9ZDu_4zPWaXC1FZZTWCQJm2EEaWKOJn_A_taSUBEq1OY-pcEVR7FZXwT1ksMOq6t6bImIwdf4IYsvXhV5m144AvLarR9NhAGY8MGJ_mu3PD_pcaj90ATqlYGsdB9ZBuhsBr3FqnBONXH0GdA',
  }) =>
      'https://bcsgg4swgk40owc0swosc8go.apps.cascavel.ifpr.edu.br/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static ListagemDeEventosCall listagemDeEventosCall = ListagemDeEventosCall();
  static CriarEventosCall criarEventosCall = CriarEventosCall();
  static AtualizarEventoCall atualizarEventoCall = AtualizarEventoCall();
  static RemoverEventoCall removerEventoCall = RemoverEventoCall();
}

class ListagemDeEventosCall {
  Future<ApiCallResponse> call({
    String? startDate = '2020-10-28',
    String? endDate = '2025-10-28',
    String? turma = '1INF',
    String? limit = '',
    String? page = '',
    String? token =
        'eyJhbGciOiJSUzI1NiIsImtpZCI6IjdlYTA5ZDA1NzI2MmU2M2U2MmZmNzNmMDNlMDRhZDI5ZDg5Zjg5MmEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vbWV1LWktZi1hLXAtay1vdzlxaHIiLCJhdWQiOiJtZXUtaS1mLWEtcC1rLW93OXFociIsImF1dGhfdGltZSI6MTc2MTY3MTE3OSwidXNlcl9pZCI6IjdmaUxHU3d4VkVhbUZKc29nbHVXTjc2TXIyejIiLCJzdWIiOiI3ZmlMR1N3eFZFYW1GSnNvZ2x1V043Nk1yMnoyIiwiaWF0IjoxNzYxNjgxMDgzLCJleHAiOjE3NjE2ODQ2ODMsImVtYWlsIjoiMjAyMzMwMzU0OTJAZXN0dWRhbnRlcy5pZnByLmVkdS5iciIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJlbWFpbCI6WyIyMDIzMzAzNTQ5MkBlc3R1ZGFudGVzLmlmcHIuZWR1LmJyIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.hth66h6GCQM-XxGA5gxmIrNYpVdXMuhXjG6RoiuqHt_wyCsSqZuTKKqq7rp9NFOKyTxwv4aV0KO8IAV-bgv7ZXlPacLvH2uIcuqyiTFc8Ger-zssZc2BzBGXCdpSeO_VNyx3_T5JJOUa8gqYRFSXfLOW3zUmbbzm4wtyHPsNrrYqszI8ENoO_c6tjHRGp7CB9zR_gf9ZDu_4zPWaXC1FZZTWCQJm2EEaWKOJn_A_taSUBEq1OY-pcEVR7FZXwT1ksMOq6t6bImIwdf4IYsvXhV5m144AvLarR9NhAGY8MGJ_mu3PD_pcaj90ATqlYGsdB9ZBuhsBr3FqnBONXH0GdA',
  }) async {
    final baseUrl = AgendaGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ListagemDeEventos',
      apiUrl: '${baseUrl}/agenda/${turma}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'start-date': startDate,
        'end-date': endDate,
        'limit': limit,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriarEventosCall {
  Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJSUzI1NiIsImtpZCI6IjdlYTA5ZDA1NzI2MmU2M2U2MmZmNzNmMDNlMDRhZDI5ZDg5Zjg5MmEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vbWV1LWktZi1hLXAtay1vdzlxaHIiLCJhdWQiOiJtZXUtaS1mLWEtcC1rLW93OXFociIsImF1dGhfdGltZSI6MTc2MTY3MTE3OSwidXNlcl9pZCI6IjdmaUxHU3d4VkVhbUZKc29nbHVXTjc2TXIyejIiLCJzdWIiOiI3ZmlMR1N3eFZFYW1GSnNvZ2x1V043Nk1yMnoyIiwiaWF0IjoxNzYxNjgxMDgzLCJleHAiOjE3NjE2ODQ2ODMsImVtYWlsIjoiMjAyMzMwMzU0OTJAZXN0dWRhbnRlcy5pZnByLmVkdS5iciIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJlbWFpbCI6WyIyMDIzMzAzNTQ5MkBlc3R1ZGFudGVzLmlmcHIuZWR1LmJyIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.hth66h6GCQM-XxGA5gxmIrNYpVdXMuhXjG6RoiuqHt_wyCsSqZuTKKqq7rp9NFOKyTxwv4aV0KO8IAV-bgv7ZXlPacLvH2uIcuqyiTFc8Ger-zssZc2BzBGXCdpSeO_VNyx3_T5JJOUa8gqYRFSXfLOW3zUmbbzm4wtyHPsNrrYqszI8ENoO_c6tjHRGp7CB9zR_gf9ZDu_4zPWaXC1FZZTWCQJm2EEaWKOJn_A_taSUBEq1OY-pcEVR7FZXwT1ksMOq6t6bImIwdf4IYsvXhV5m144AvLarR9NhAGY8MGJ_mu3PD_pcaj90ATqlYGsdB9ZBuhsBr3FqnBONXH0GdA',
  }) async {
    final baseUrl = AgendaGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "colors": "#FF5733",
  "descricao": "Revisão para a prova de matemática",
  "fim": "2025-10-28T10:00:00Z",
  "id": "6526f58e25a7a7c36a7cd7a1",
  "inicio": "2025-10-28T08:00:00Z",
  "titulo": "Aula de revisão",
  "turma": "1INF"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CriarEventos',
      apiUrl: '${baseUrl}/agenda',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AtualizarEventoCall {
  Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJSUzI1NiIsImtpZCI6IjdlYTA5ZDA1NzI2MmU2M2U2MmZmNzNmMDNlMDRhZDI5ZDg5Zjg5MmEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vbWV1LWktZi1hLXAtay1vdzlxaHIiLCJhdWQiOiJtZXUtaS1mLWEtcC1rLW93OXFociIsImF1dGhfdGltZSI6MTc2MTY3MTE3OSwidXNlcl9pZCI6IjdmaUxHU3d4VkVhbUZKc29nbHVXTjc2TXIyejIiLCJzdWIiOiI3ZmlMR1N3eFZFYW1GSnNvZ2x1V043Nk1yMnoyIiwiaWF0IjoxNzYxNjgxMDgzLCJleHAiOjE3NjE2ODQ2ODMsImVtYWlsIjoiMjAyMzMwMzU0OTJAZXN0dWRhbnRlcy5pZnByLmVkdS5iciIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJlbWFpbCI6WyIyMDIzMzAzNTQ5MkBlc3R1ZGFudGVzLmlmcHIuZWR1LmJyIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.hth66h6GCQM-XxGA5gxmIrNYpVdXMuhXjG6RoiuqHt_wyCsSqZuTKKqq7rp9NFOKyTxwv4aV0KO8IAV-bgv7ZXlPacLvH2uIcuqyiTFc8Ger-zssZc2BzBGXCdpSeO_VNyx3_T5JJOUa8gqYRFSXfLOW3zUmbbzm4wtyHPsNrrYqszI8ENoO_c6tjHRGp7CB9zR_gf9ZDu_4zPWaXC1FZZTWCQJm2EEaWKOJn_A_taSUBEq1OY-pcEVR7FZXwT1ksMOq6t6bImIwdf4IYsvXhV5m144AvLarR9NhAGY8MGJ_mu3PD_pcaj90ATqlYGsdB9ZBuhsBr3FqnBONXH0GdA',
  }) async {
    final baseUrl = AgendaGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'AtualizarEvento',
      apiUrl: '${baseUrl}/agenda',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoverEventoCall {
  Future<ApiCallResponse> call({
    String? token =
        'eyJhbGciOiJSUzI1NiIsImtpZCI6IjdlYTA5ZDA1NzI2MmU2M2U2MmZmNzNmMDNlMDRhZDI5ZDg5Zjg5MmEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vbWV1LWktZi1hLXAtay1vdzlxaHIiLCJhdWQiOiJtZXUtaS1mLWEtcC1rLW93OXFociIsImF1dGhfdGltZSI6MTc2MTY3MTE3OSwidXNlcl9pZCI6IjdmaUxHU3d4VkVhbUZKc29nbHVXTjc2TXIyejIiLCJzdWIiOiI3ZmlMR1N3eFZFYW1GSnNvZ2x1V043Nk1yMnoyIiwiaWF0IjoxNzYxNjgxMDgzLCJleHAiOjE3NjE2ODQ2ODMsImVtYWlsIjoiMjAyMzMwMzU0OTJAZXN0dWRhbnRlcy5pZnByLmVkdS5iciIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJlbWFpbCI6WyIyMDIzMzAzNTQ5MkBlc3R1ZGFudGVzLmlmcHIuZWR1LmJyIl19LCJzaWduX2luX3Byb3ZpZGVyIjoicGFzc3dvcmQifX0.hth66h6GCQM-XxGA5gxmIrNYpVdXMuhXjG6RoiuqHt_wyCsSqZuTKKqq7rp9NFOKyTxwv4aV0KO8IAV-bgv7ZXlPacLvH2uIcuqyiTFc8Ger-zssZc2BzBGXCdpSeO_VNyx3_T5JJOUa8gqYRFSXfLOW3zUmbbzm4wtyHPsNrrYqszI8ENoO_c6tjHRGp7CB9zR_gf9ZDu_4zPWaXC1FZZTWCQJm2EEaWKOJn_A_taSUBEq1OY-pcEVR7FZXwT1ksMOq6t6bImIwdf4IYsvXhV5m144AvLarR9NhAGY8MGJ_mu3PD_pcaj90ATqlYGsdB9ZBuhsBr3FqnBONXH0GdA',
  }) async {
    final baseUrl = AgendaGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'RemoverEvento',
      apiUrl: '${baseUrl}/agenda',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Agenda Group Code

/// Start Autorizacoes Group Code

class AutorizacoesGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://bcsgg4swgk40owc0swosc8go.apps.cascavel.ifpr.edu.br/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static ListarAutorizacaoCall listarAutorizacaoCall = ListarAutorizacaoCall();
  static CriarAutorizacaoCall criarAutorizacaoCall = CriarAutorizacaoCall();
}

class ListarAutorizacaoCall {
  Future<ApiCallResponse> call({
    String? startDate = '',
    String? endDate = '',
    String? mat = '',
    String? token = '',
  }) async {
    final baseUrl = AutorizacoesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'ListarAutorizacao',
      apiUrl: '${baseUrl}/autorizacao',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'start-date': startDate,
        'end-date': endDate,
        'matricula': mat,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? motivo(dynamic response) => (getJsonField(
        response,
        r'''$[:].motivo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CriarAutorizacaoCall {
  Future<ApiCallResponse> call({
    String? entradaSaida = '',
    String? motivo = '',
    String? autorizador = '',
    String? aluno = '',
    String? dataCriacao = '',
    String? token = '',
  }) async {
    final baseUrl = AutorizacoesGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "created_at": "${escapeStringForJson(dataCriacao)}",
  "mat_aluno": "${escapeStringForJson(aluno)}",
  "mat_autorizador": "${escapeStringForJson(autorizador)}",
  "motivo": "${escapeStringForJson(motivo)}",
  "type": "${escapeStringForJson(entradaSaida)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CriarAutorizacao',
      apiUrl: '${baseUrl}/autorizacao/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Autorizacoes Group Code

class AdicionarAlunoCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "testesemauth@if.com",
  "matricula": "202300123",
  "nome": "João do teste",
  "turma": "2A",
  "userType": "aluno"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Adicionar Aluno',
      apiUrl:
          'https://bcsgg4swgk40owc0swosc8go.apps.cascavel.ifpr.edu.br/api/users/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PegarTodosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Pegar Todos',
      apiUrl:
          'https://bcsgg4swgk40owc0swosc8go.apps.cascavel.ifpr.edu.br/api/users/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? teste(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class DeleteUserCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? matricula = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete User',
      apiUrl:
          'https://bcsgg4swgk40owc0swosc8go.apps.cascavel.ifpr.edu.br/api/users/',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'matricula': matricula,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscarAlunoCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? mat = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar Aluno ',
      apiUrl:
          'https://bcsgg4swgk40owc0swosc8go.apps.cascavel.ifpr.edu.br/api/users/${mat}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserCall {
  static Future<ApiCallResponse> call({
    String? matricula = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "idUser": "auth0|abc123",
  "matricula": "${escapeStringForJson(matricula)}",
  "nome": "João da Silva",
  "turma": "2A",
  "userType": "aluno"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update User',
      apiUrl:
          'https://bcsgg4swgk40owc0swosc8go.apps.cascavel.ifpr.edu.br/api/users/',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegistrarCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? matricula = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "matricula": "${escapeStringForJson(matricula)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registrar',
      apiUrl:
          'https://bcsgg4swgk40owc0swosc8go.apps.cascavel.ifpr.edu.br/api/auth/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EntradasCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? startDate = '',
    String? endDate = '',
    String? mat = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Entradas',
      apiUrl:
          'https://bcsgg4swgk40owc0swosc8go.apps.cascavel.ifpr.edu.br/api/entrada/${mat}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'start-date': startDate,
        'end-date': endDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
