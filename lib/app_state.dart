import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  dynamic _userTransactionsLatest;
  dynamic get userTransactionsLatest => _userTransactionsLatest;
  set userTransactionsLatest(dynamic value) {
    _userTransactionsLatest = value;
  }

  dynamic _userTransactionsLongest;
  dynamic get userTransactionsLongest => _userTransactionsLongest;
  set userTransactionsLongest(dynamic value) {
    _userTransactionsLongest = value;
  }
}
