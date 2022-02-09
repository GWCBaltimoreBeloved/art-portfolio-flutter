// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'art.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Art _$$_ArtFromJson(Map<String, dynamic> json) => _$_Art(
      documentId: json['documentId'] as String? ?? '',
      name: json['name'] as String,
      description: json['description'] as String,
      downloadUrl: json['downloadUrl'] as String,
      firebaseStoragePath: json['firebaseStoragePath'] as String,
      artist: Artist.fromJson(json['artist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ArtToJson(_$_Art instance) => <String, dynamic>{
      'documentId': instance.documentId,
      'name': instance.name,
      'description': instance.description,
      'downloadUrl': instance.downloadUrl,
      'firebaseStoragePath': instance.firebaseStoragePath,
      'artist': instance.artist.toJson(),
    };
