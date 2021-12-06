import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artListProvider = ChangeNotifierProvider.autoDispose((_) {
  return ArtListProvider();
});

class ArtListProvider extends ChangeNotifier {}
