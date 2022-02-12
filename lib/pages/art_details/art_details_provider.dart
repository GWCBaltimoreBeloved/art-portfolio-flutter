import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artDetailsProvider = ChangeNotifierProvider.autoDispose((_) {
  return ArtDetailsProvider();
});

class ArtDetailsProvider extends ChangeNotifier {}
