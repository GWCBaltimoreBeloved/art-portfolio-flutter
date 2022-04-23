import 'package:art_portfolio_flutter/repository/art/models/art.dart';
import 'package:art_portfolio_flutter/repository/artist/models/artist.dart';
import 'package:art_portfolio_flutter/repository/repositories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artFeedProvider = ChangeNotifierProvider.autoDispose((_) {
  return ArtFeedProvider();
});

class ArtFeedProvider extends ChangeNotifier {
  List<Art> artList = [];
  Artist? myArtist;

  ArtFeedProvider() {
    retrieveArtList();
    retrieveMyArtist();
  }

  Future<void> retrieveArtList() async {
    final list = await Repositories.instance.artRepository.getList();

    artList = list ?? [];
    notifyListeners();
  }

  Future<void> retrieveMyArtist() async {
    final artist = await Repositories.instance.artistRepository.getMyArtist();

    myArtist = artist;
    notifyListeners();
  }

  bool isFavoriteArt(String artId) {
    return myArtist?.favoriteArt.contains(artId) == true;

    //return artId in retrieveMyArtist().favArtList();
  }
}
