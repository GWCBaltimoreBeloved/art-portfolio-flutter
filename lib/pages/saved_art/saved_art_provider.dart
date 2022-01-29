import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final savedArtProvider = ChangeNotifierProvider.autoDispose((_) {
  return SavedArtProvider();
});

class SavedArtProvider extends ChangeNotifier {}
