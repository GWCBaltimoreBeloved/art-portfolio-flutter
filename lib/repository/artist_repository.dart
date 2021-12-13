import 'package:art_portfolio_flutter/repository/artist/models/artist.dart';
import 'package:art_portfolio_flutter/repository/base_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ArtistRepository extends BaseRepository<Artist> {
  ArtistRepository()
      : super(
          collectionName: 'artists',
          fromJson: Artist.fromJson,
          toJson: (artist) => artist.toJson(),
        );

  Future<Artist?> getMyArtist() async {
    final myUser = FirebaseAuth.instance.currentUser ??
        await FirebaseAuth.instance.authStateChanges().first;

    if (myUser == null) {
      return null;
    }
    final filteredList =
        await collectionReference.where('userId', isEqualTo: myUser.uid).get();
    if (filteredList.docs.isNotEmpty) {
      return filteredList.docs.first.data();
    }
  }
}
