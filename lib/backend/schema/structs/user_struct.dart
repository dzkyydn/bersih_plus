// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? nik,
    String? name,
    String? phone,
    String? email,
    String? balance,
  })  : _nik = nik,
        _name = name,
        _phone = phone,
        _email = email,
        _balance = balance;

  // "nik" field.
  String? _nik;
  String get nik => _nik ?? '';
  set nik(String? val) => _nik = val;
  bool hasNik() => _nik != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "balance" field.
  String? _balance;
  String get balance => _balance ?? '';
  set balance(String? val) => _balance = val;
  bool hasBalance() => _balance != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        nik: data['nik'] as String?,
        name: data['name'] as String?,
        phone: data['phone'] as String?,
        email: data['email'] as String?,
        balance: data['balance'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nik': _nik,
        'name': _name,
        'phone': _phone,
        'email': _email,
        'balance': _balance,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nik': serializeParam(
          _nik,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'balance': serializeParam(
          _balance,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        nik: deserializeParam(
          data['nik'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        balance: deserializeParam(
          data['balance'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        nik == other.nik &&
        name == other.name &&
        phone == other.phone &&
        email == other.email &&
        balance == other.balance;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nik, name, phone, email, balance]);
}

UserStruct createUserStruct({
  String? nik,
  String? name,
  String? phone,
  String? email,
  String? balance,
}) =>
    UserStruct(
      nik: nik,
      name: name,
      phone: phone,
      email: email,
      balance: balance,
    );
