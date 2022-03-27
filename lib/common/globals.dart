import 'package:firebase_auth/firebase_auth.dart';

class Globals {
  Globals._();

  static Future<User?> getMyUser() async {
    return FirebaseAuth.instance.currentUser ??
        await FirebaseAuth.instance.authStateChanges().first;
  }
}
