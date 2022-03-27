import 'dart:async';

import 'package:art_portfolio_flutter/common/globals.dart';
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
        User? user = await Globals.getMyUser();
        await user?.reload();
        if (user != null && user.emailVerified) {
          isUserVerified = true;
          notifyListeners();
          timer.cancel();
        }
      },
    );
  }

  void resendEmail() async {
    User? user = await Globals.getMyUser();

    if (user != null && !user.emailVerified) {
      user.sendEmailVerification();
    }
  }
}
