import 'package:art_portfolio_flutter/repository/artist_repository.dart';

class Repositories {
  factory Repositories() => instance;
  static final Repositories instance = Repositories._();
  Repositories._();

  final artistRepository = ArtistRepository();
}
