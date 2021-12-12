import 'package:art_portfolio_flutter/repository/artist/models/artist.dart';
import 'package:art_portfolio_flutter/repository/repository.dart';

class Repositories {
  factory Repositories() => instance;
  static final Repositories instance = Repositories._();
  Repositories._();

  final artistRepository = Repository<Artist>(
    collectionName: 'artists',
    fromJson: Artist.fromJson,
    toJson: (artist) => artist.toJson(),
  );
}
