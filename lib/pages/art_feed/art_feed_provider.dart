import 'package:art_portfolio_flutter/repository/art/models/art.dart';
import 'package:art_portfolio_flutter/repository/repositories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artFeedProvider = ChangeNotifierProvider.autoDispose((_) {
  return ArtFeedProvider();
});

class ArtFeedProvider extends ChangeNotifier {
  List<Art> artList = [];

  ArtFeedProvider() {
    retrieveArtList();
  }

  Future<void> retrieveArtList() async {
    final list = await Repositories.instance.artRepository.getList();

    artList = list ?? [];
    notifyListeners();
  }
}
