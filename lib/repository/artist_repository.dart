import 'package:art_portfolio_flutter/common/globals.dart';
import 'package:art_portfolio_flutter/repository/artist/models/artist.dart';
import 'package:art_portfolio_flutter/repository/base_repository.dart';

class ArtistRepository extends BaseRepository<Artist> {
  ArtistRepository()
      : super(
          collectionName: 'artists',
          fromJson: Artist.fromJson,
          toJson: (artist) => artist.toJson(),
        );

  Future<Artist?> getMyArtist() async {
    final myUser = await Globals.getMyUser();

    if (myUser == null) {
      return null;
    }
    final filteredList =
        await collectionReference.where('userId', isEqualTo: myUser.uid).get();
    if (filteredList.docs.isNotEmpty) {
      return filteredList.docs.first.data();
    }
  }

  Future<Stream<Artist>?> getMyArtistStream() async {
    final myUser = await Globals.getMyUser();

    if (myUser == null) {
      return null;
    }
    return collectionReference
        .where('userId', isEqualTo: myUser.uid)
        .snapshots()
        .map((event) => event.docs.first.data());
  }
}
