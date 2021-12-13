import 'package:art_portfolio_flutter/repository/artist/models/artist.dart';
import 'package:art_portfolio_flutter/repository/repositories.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registrationProvider = ChangeNotifierProvider.autoDispose((_) {
  return ArtistRegistrationProvider();
});

class ArtistRegistrationProvider extends ChangeNotifier {
  Artist _newArtist = Artist(
    userId: '',
    firstName: '',
    lastName: '',
    description: '',
    github: '',
    instagram: '',
  );

  void setFirstName(String value) {
    _newArtist = _newArtist.copyWith(firstName: value);
  }

  void setLastName(String value) {
    _newArtist = _newArtist.copyWith(lastName: value);
  }

  void setDescription(String value) {
    _newArtist = _newArtist.copyWith(description: value);
  }

  Future<String?> submit() async {
    User? user = FirebaseAuth.instance.currentUser ??
        await FirebaseAuth.instance.authStateChanges().first;

    if (user == null) {
      return 'You must be logged in before registering as an artist';
    }

    _newArtist = _newArtist.copyWith(userId: user.uid);

    final myArtist = await Repositories.instance.artistRepository.getMyArtist();
    if (myArtist == null) {
      final artist = await Repositories.instance.artistRepository.addItem(
        _newArtist,
      );
      if (artist == null) {
        return 'Error creating artist';
      }
    } else {
      final success = await Repositories.instance.artistRepository.updateItem(
        item: _newArtist,
        documentId: myArtist.documentId,
      );

      if (!success) {
        return 'Error updating artist';
      }
    }
  }
}
