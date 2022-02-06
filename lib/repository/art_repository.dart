import 'package:art_portfolio_flutter/repository/art/models/art.dart';
import 'package:art_portfolio_flutter/repository/base_repository.dart';

class ArtRepository extends BaseRepository<Art> {
  ArtRepository()
      : super(
          collectionName: 'art',
          fromJson: Art.fromJson,
          toJson: (art) => art.toJson(),
        );
}
