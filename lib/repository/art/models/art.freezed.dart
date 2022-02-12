// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'art.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Art _$ArtFromJson(Map<String, dynamic> json) {
  return _Art.fromJson(json);
}

/// @nodoc
class _$ArtTearOff {
  const _$ArtTearOff();

  _Art call(
      {String documentId = '',
      required String name,
      required String description,
      required String downloadUrl,
      required String firebaseStoragePath,
      required Artist artist}) {
    return _Art(
      documentId: documentId,
      name: name,
      description: description,
      downloadUrl: downloadUrl,
      firebaseStoragePath: firebaseStoragePath,
      artist: artist,
    );
  }

  Art fromJson(Map<String, Object?> json) {
    return Art.fromJson(json);
  }
}

/// @nodoc
const $Art = _$ArtTearOff();

/// @nodoc
mixin _$Art {
  String get documentId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get downloadUrl => throw _privateConstructorUsedError;
  String get firebaseStoragePath => throw _privateConstructorUsedError;
  Artist get artist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtCopyWith<Art> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtCopyWith<$Res> {
  factory $ArtCopyWith(Art value, $Res Function(Art) then) =
      _$ArtCopyWithImpl<$Res>;
  $Res call(
      {String documentId,
      String name,
      String description,
      String downloadUrl,
      String firebaseStoragePath,
      Artist artist});

  $ArtistCopyWith<$Res> get artist;
}

/// @nodoc
class _$ArtCopyWithImpl<$Res> implements $ArtCopyWith<$Res> {
  _$ArtCopyWithImpl(this._value, this._then);

  final Art _value;
  // ignore: unused_field
  final $Res Function(Art) _then;

  @override
  $Res call({
    Object? documentId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? downloadUrl = freezed,
    Object? firebaseStoragePath = freezed,
    Object? artist = freezed,
  }) {
    return _then(_value.copyWith(
      documentId: documentId == freezed
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseStoragePath: firebaseStoragePath == freezed
          ? _value.firebaseStoragePath
          : firebaseStoragePath // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
    ));
  }

  @override
  $ArtistCopyWith<$Res> get artist {
    return $ArtistCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value));
    });
  }
}

/// @nodoc
abstract class _$ArtCopyWith<$Res> implements $ArtCopyWith<$Res> {
  factory _$ArtCopyWith(_Art value, $Res Function(_Art) then) =
      __$ArtCopyWithImpl<$Res>;
  @override
  $Res call(
      {String documentId,
      String name,
      String description,
      String downloadUrl,
      String firebaseStoragePath,
      Artist artist});

  @override
  $ArtistCopyWith<$Res> get artist;
}

/// @nodoc
class __$ArtCopyWithImpl<$Res> extends _$ArtCopyWithImpl<$Res>
    implements _$ArtCopyWith<$Res> {
  __$ArtCopyWithImpl(_Art _value, $Res Function(_Art) _then)
      : super(_value, (v) => _then(v as _Art));

  @override
  _Art get _value => super._value as _Art;

  @override
  $Res call({
    Object? documentId = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? downloadUrl = freezed,
    Object? firebaseStoragePath = freezed,
    Object? artist = freezed,
  }) {
    return _then(_Art(
      documentId: documentId == freezed
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseStoragePath: firebaseStoragePath == freezed
          ? _value.firebaseStoragePath
          : firebaseStoragePath // ignore: cast_nullable_to_non_nullable
              as String,
      artist: artist == freezed
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Art implements _Art {
  _$_Art(
      {this.documentId = '',
      required this.name,
      required this.description,
      required this.downloadUrl,
      required this.firebaseStoragePath,
      required this.artist});

  factory _$_Art.fromJson(Map<String, dynamic> json) => _$$_ArtFromJson(json);

  @JsonKey()
  @override
  final String documentId;
  @override
  final String name;
  @override
  final String description;
  @override
  final String downloadUrl;
  @override
  final String firebaseStoragePath;
  @override
  final Artist artist;

  @override
  String toString() {
    return 'Art(documentId: $documentId, name: $name, description: $description, downloadUrl: $downloadUrl, firebaseStoragePath: $firebaseStoragePath, artist: $artist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Art &&
            const DeepCollectionEquality()
                .equals(other.documentId, documentId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.downloadUrl, downloadUrl) &&
            const DeepCollectionEquality()
                .equals(other.firebaseStoragePath, firebaseStoragePath) &&
            const DeepCollectionEquality().equals(other.artist, artist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(documentId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(downloadUrl),
      const DeepCollectionEquality().hash(firebaseStoragePath),
      const DeepCollectionEquality().hash(artist));

  @JsonKey(ignore: true)
  @override
  _$ArtCopyWith<_Art> get copyWith =>
      __$ArtCopyWithImpl<_Art>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtToJson(this);
  }
}

abstract class _Art implements Art {
  factory _Art(
      {String documentId,
      required String name,
      required String description,
      required String downloadUrl,
      required String firebaseStoragePath,
      required Artist artist}) = _$_Art;

  factory _Art.fromJson(Map<String, dynamic> json) = _$_Art.fromJson;

  @override
  String get documentId;
  @override
  String get name;
  @override
  String get description;
  @override
  String get downloadUrl;
  @override
  String get firebaseStoragePath;
  @override
  Artist get artist;
  @override
  @JsonKey(ignore: true)
  _$ArtCopyWith<_Art> get copyWith => throw _privateConstructorUsedError;
}
