import 'package:art_portfolio_flutter/repository/art/models/art.dart';
import 'package:art_portfolio_flutter/repository/repositories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artDetailsProvider = ChangeNotifierProvider.autoDispose((_) {
  return ArtDetailsProvider();
});

class ArtDetailsProvider extends ChangeNotifier {
  String artworkName = 'ebhfesf';
  String authorName = 'sssssss';

  Art? art;

  ArtDetailsProvider() {
    retrieveArt();
  }

  Future<void> retrieveArt() async {
    final list = await Repositories.instance.artRepository.getList();
    if (list?.isNotEmpty == true) {
      art = list?.first;
    }
    artworkName = art?.name ?? '';
    final firstName = art?.artist.firstName ?? '';
    final lastName = art?.artist.lastName ?? '';
    authorName = '$firstName $lastName';
    notifyListeners();
  }
}
