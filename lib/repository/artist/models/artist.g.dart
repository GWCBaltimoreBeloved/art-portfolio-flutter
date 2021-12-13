// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Artist _$$_ArtistFromJson(Map<String, dynamic> json) => _$_Artist(
      documentId: json['documentId'] as String? ?? '',
      userId: json['userId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      description: json['description'] as String,
      instagram: json['instagram'] as String,
      github: json['github'] as String,
    );

Map<String, dynamic> _$$_ArtistToJson(_$_Artist instance) => <String, dynamic>{
      'documentId': instance.documentId,
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'description': instance.description,
      'instagram': instance.instagram,
      'github': instance.github,
    };
