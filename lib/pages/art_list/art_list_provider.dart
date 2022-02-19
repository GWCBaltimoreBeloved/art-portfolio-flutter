import 'package:art_portfolio_flutter/repository/art/models/art.dart';
import 'package:art_portfolio_flutter/repository/artist/models/artist.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artListProvider = ChangeNotifierProvider.autoDispose((_) {
  return ArtListProvider();
});

class ArtListProvider extends ChangeNotifier {
  final artList = [
    Art(
      name: 'name 1',
      description: 'description 1',
      downloadUrl: 'downloadUrl',
      firebaseStoragePath: 'firebaseStoragePath',
      artist: Artist(
        userId: 'userId',
        firstName: 'firstName 1',
        lastName: 'lastName 1',
        description: 'description',
        instagram: 'instagram',
        github: 'github',
      ),
    ),
    Art(
      name: 'name 2',
      description: 'description 2',
      downloadUrl: 'downloadUrl',
      firebaseStoragePath: 'firebaseStoragePath',
      artist: Artist(
        userId: 'userId',
        firstName: 'firstName 2',
        lastName: 'lastName 2',
        description: 'description',
        instagram: 'instagram',
        github: 'github',
      ),
    ),
  ];
}
