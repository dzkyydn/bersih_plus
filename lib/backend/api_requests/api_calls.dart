import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RegisterAPICall {
  static Future<ApiCallResponse> call({
    String? numberNIK = '',
    String? fullName = '',
    String? numberPhone = '',
    String? emailAddress = '',
    String? passwordCreate = '',
    String? passwordConfirm = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'registerAPI',
      apiUrl: 'https://sampahiniujian.my.id/API/postRegister',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'numberNIK': numberNIK,
        'fullName': fullName,
        'numberPhone': numberPhone,
        'emailAddress': emailAddress,
        'passwordCreate': passwordCreate,
        'passwordConfirm': passwordConfirm,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class LoginAPICall {
  static Future<ApiCallResponse> call({
    String? numberNIK = '',
    String? passwordCreate = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loginAPI',
      apiUrl: 'https://sampahiniujian.my.id/API/postLogin',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'numberNIK': numberNIK,
        'passwordCreate': passwordCreate,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? nik(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userData.nik''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userData.phone''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userData.email''',
      ));
  static String? balance(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userData.balance''',
      ));
  static List? transactions(dynamic response) => getJsonField(
        response,
        r'''$.userTransactions''',
        true,
      ) as List?;
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userData.name''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userToken''',
      ));
}

class PasswordAPICall {
  static Future<ApiCallResponse> call({
    String? passwordOld = '',
    String? passwordNew = '',
    String? passwordConfirm = '',
    String? numberNIK = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'passwordAPI',
      apiUrl: 'https://sampahiniujian.my.id/API/putNewPassword',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'passwordOld': passwordOld,
        'passwordNew': passwordNew,
        'passwordConfirm': passwordConfirm,
        'numberNIK': numberNIK,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ContactAPICall {
  static Future<ApiCallResponse> call({
    String? numberPhone = '',
    String? emailAddress = '',
    String? numberNIK = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'contactAPI',
      apiUrl: 'https://sampahiniujian.my.id/API/putContactInfo',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'numberPhone': numberPhone,
        'emailAddress': emailAddress,
        'numberNIK': numberNIK,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferAPICall {
  static Future<ApiCallResponse> call({
    String? senderNIK = '',
    String? receiverNIK = '',
    String? amount = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'transferAPI',
      apiUrl: 'https://sampahiniujian.my.id/API/transferBalance',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'senderNIK': senderNIK,
        'receiverNIK': receiverNIK,
        'amount': amount,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
