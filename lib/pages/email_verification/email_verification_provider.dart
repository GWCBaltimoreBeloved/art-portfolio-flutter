import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final emailVerificationProvider = ChangeNotifierProvider.autoDispose((_) {
  return EmailVerificationProvider();
});

class EmailVerificationProvider extends ChangeNotifier {
  bool isUserVerified = false;

  EmailVerificationProvider() {
    _startVerificationListener();
  }

  void _startVerificationListener() {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) async {
        User? user = FirebaseAuth.instance.currentUser;
        await user?.reload();
        if (user != null && user.emailVerified) {
          isUserVerified = true;
          notifyListeners();
          timer.cancel();
        }
      },
    );
  }

  void resendEmail() {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null && !user.emailVerified) {
      user.sendEmailVerification();
    }
  }
}
