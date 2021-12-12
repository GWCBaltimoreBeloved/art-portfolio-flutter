import 'package:art_portfolio_flutter/repository/artist/models/artist.dart';
import 'package:art_portfolio_flutter/repository/repositories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artistListProvider = ChangeNotifierProvider.autoDispose((_) {
  return ArtistListProvider();
});

class ArtistListProvider extends ChangeNotifier {
  List<Artist>? artists;

  ArtistListProvider() {
    getArtists();
  }

  Future<void> getArtists() async {
    artists = await Repositories.instance.artistRepository.getList();
    notifyListeners();
  }

  void deleteArtist({required String id}) {
    Repositories.instance.artistRepository.updateItem(
        documentId: id,
        item: Artist(
            firstName: 'firstName',
            lastName: 'lastName',
            description: 'description',
            instagram: 'instagram',
            github: 'github'));
  }
}
