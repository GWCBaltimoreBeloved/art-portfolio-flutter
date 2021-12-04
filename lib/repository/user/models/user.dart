import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  factory User.fromJson(Map<String, dynamic> json, String id) =>
      _$UserFromJson(json)..id = id;
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @JsonKey(ignore: true)
  late final String id;
  final String firstName;
  final String lastName;
  final String description;
  final String instagram;
  final String github;

  User({
    required this.firstName,
    required this.lastName,
    required this.description,
    required this.instagram,
    required this.github,
  });

  User copyWith({
    String? firstName,
    String? lastName,
    String? description,
    String? instagram,
    String? github,
  }) {
    return User(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      description: description ?? this.description,
      instagram: instagram ?? this.instagram,
      github: github ?? this.github,
    );
  }
}
