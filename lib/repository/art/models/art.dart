import 'package:art_portfolio_flutter/repository/artist/models/artist.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'art.freezed.dart';
part 'art.g.dart';

@freezed
class Art with _$Art {
  factory Art({
    @Default('') final String documentId,
    required final String name,
    required final String description,
    required final String downloadUrl,
    required final String firebaseStoragePath,
    required final Artist artist,
  }) = _Art;

  factory Art.fromJson(Map<String, dynamic> json) => _$ArtFromJson(json);
}
