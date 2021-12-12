import 'package:art_portfolio_flutter/repository/artist/models/artist.dart';
import 'package:art_portfolio_flutter/repository/repositories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registrationProvider = ChangeNotifierProvider.autoDispose((_) {
  return ArtistRegistrationProvider();
});

class ArtistRegistrationProvider extends ChangeNotifier {
  Artist _newArtist = Artist(
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

  Future<Artist?> submit() async {
    return Repositories.instance.artistRepository.addItem(
      _newArtist,
    );
  }
}
