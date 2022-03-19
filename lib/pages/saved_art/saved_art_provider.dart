import 'package:art_portfolio_flutter/repository/art/models/art.dart';
import 'package:art_portfolio_flutter/repository/repositories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final savedArtProvider = ChangeNotifierProvider.autoDispose((_) {
  return SavedArtProvider();
});

class SavedArtProvider extends ChangeNotifier {
  List<Art> savedArtList = [];

  SavedArtProvider() {
    retrieveSavedArtList();
  }

  Future<void> retrieveSavedArtList() async {
    final list = await Repositories.instance.artRepository.getList();
    savedArtList = list ?? [];

    notifyListeners();
  }
}
