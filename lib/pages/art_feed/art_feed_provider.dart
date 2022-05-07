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
  }

  Future<void> toggleFavoriteStatus(String artId) async {
    final currentStatus = isFavoriteArt(artId);

    //get list
    final updatedFavoriteList = myArtist!.favoriteArt;
    //update list
    if (currentStatus == true) {
      updatedFavoriteList.remove(artId);
    } else {
      updatedFavoriteList.add(artId);
    }
    //set list on artist
    final updatedArtist = myArtist!.copyWith(favoriteArt: updatedFavoriteList);

    //update artist in repository
    await Repositories.instance.artistRepository.updateItem(
      item: updatedArtist,
      documentId: myArtist!.documentId,
    );
    retrieveMyArtist();
  }
}
