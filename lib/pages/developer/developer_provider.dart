import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final developerProvider =
    ChangeNotifierProvider.autoDispose<DeveloperProvider>((_) {
  return DeveloperProvider();
});

class DeveloperProvider extends ChangeNotifier {}
