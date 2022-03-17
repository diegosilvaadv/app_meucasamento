import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AppmeucasmentoFirebaseUser {
  AppmeucasmentoFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

AppmeucasmentoFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AppmeucasmentoFirebaseUser> appmeucasmentoFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AppmeucasmentoFirebaseUser>(
            (user) => currentUser = AppmeucasmentoFirebaseUser(user));
