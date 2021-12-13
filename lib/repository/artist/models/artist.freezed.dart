// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
class _$ArtistTearOff {
  const _$ArtistTearOff();

  _Artist call(
      {String documentId = '',
      required String userId,
      required String firstName,
      required String lastName,
      required String description,
      required String instagram,
      required String github}) {
    return _Artist(
      documentId: documentId,
      userId: userId,
      firstName: firstName,
      lastName: lastName,
      description: description,
      instagram: instagram,
      github: github,
    );
  }

  Artist fromJson(Map<String, Object?> json) {
    return Artist.fromJson(json);
  }
}

/// @nodoc
const $Artist = _$ArtistTearOff();

/// @nodoc
mixin _$Artist {
  String get documentId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get instagram => throw _privateConstructorUsedError;
  String get github => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res>;
  $Res call(
      {String documentId,
      String userId,
      String firstName,
      String lastName,
      String description,
      String instagram,
      String github});
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res> implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  final Artist _value;
  // ignore: unused_field
  final $Res Function(Artist) _then;

  @override
  $Res call({
    Object? documentId = freezed,
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? description = freezed,
    Object? instagram = freezed,
    Object? github = freezed,
  }) {
    return _then(_value.copyWith(
      documentId: documentId == freezed
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      instagram: instagram == freezed
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String,
      github: github == freezed
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArtistCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$ArtistCopyWith(_Artist value, $Res Function(_Artist) then) =
      __$ArtistCopyWithImpl<$Res>;
  @override
  $Res call(
      {String documentId,
      String userId,
      String firstName,
      String lastName,
      String description,
      String instagram,
      String github});
}

/// @nodoc
class __$ArtistCopyWithImpl<$Res> extends _$ArtistCopyWithImpl<$Res>
    implements _$ArtistCopyWith<$Res> {
  __$ArtistCopyWithImpl(_Artist _value, $Res Function(_Artist) _then)
      : super(_value, (v) => _then(v as _Artist));

  @override
  _Artist get _value => super._value as _Artist;

  @override
  $Res call({
    Object? documentId = freezed,
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? description = freezed,
    Object? instagram = freezed,
    Object? github = freezed,
  }) {
    return _then(_Artist(
      documentId: documentId == freezed
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      instagram: instagram == freezed
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String,
      github: github == freezed
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Artist implements _Artist {
  _$_Artist(
      {this.documentId = '',
      required this.userId,
      required this.firstName,
      required this.lastName,
      required this.description,
      required this.instagram,
      required this.github});

  factory _$_Artist.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistFromJson(json);

  @JsonKey()
  @override
  final String documentId;
  @override
  final String userId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String description;
  @override
  final String instagram;
  @override
  final String github;

  @override
  String toString() {
    return 'Artist(documentId: $documentId, userId: $userId, firstName: $firstName, lastName: $lastName, description: $description, instagram: $instagram, github: $github)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Artist &&
            const DeepCollectionEquality()
                .equals(other.documentId, documentId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.instagram, instagram) &&
            const DeepCollectionEquality().equals(other.github, github));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(documentId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(instagram),
      const DeepCollectionEquality().hash(github));

  @JsonKey(ignore: true)
  @override
  _$ArtistCopyWith<_Artist> get copyWith =>
      __$ArtistCopyWithImpl<_Artist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistToJson(this);
  }
}

abstract class _Artist implements Artist {
  factory _Artist(
      {String documentId,
      required String userId,
      required String firstName,
      required String lastName,
      required String description,
      required String instagram,
      required String github}) = _$_Artist;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$_Artist.fromJson;

  @override
  String get documentId;
  @override
  String get userId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get description;
  @override
  String get instagram;
  @override
  String get github;
  @override
  @JsonKey(ignore: true)
  _$ArtistCopyWith<_Artist> get copyWith => throw _privateConstructorUsedError;
}
