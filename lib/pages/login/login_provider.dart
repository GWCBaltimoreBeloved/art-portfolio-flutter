import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider = ChangeNotifierProvider.autoDispose((_) {
  return LoginProvider();
});

class LoginProvider extends ChangeNotifier {}
