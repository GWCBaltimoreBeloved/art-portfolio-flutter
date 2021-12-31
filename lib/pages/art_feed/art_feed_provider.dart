import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artFeedProvider = ChangeNotifierProvider.autoDispose((_) {
  return ArtFeedProvider();
});

class ArtFeedProvider extends ChangeNotifier {}
