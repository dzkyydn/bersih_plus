import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class BersihPlusAuthUser {
  BersihPlusAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<BersihPlusAuthUser> bersihPlusAuthUserSubject =
    BehaviorSubject.seeded(BersihPlusAuthUser(loggedIn: false));
Stream<BersihPlusAuthUser> bersihPlusAuthUserStream() =>
    bersihPlusAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
