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
  final String email;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
  });

  User copyWith({
    String? firstName,
    String? lastName,
    String? email,
  }) {
    return User(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
    );
  }
}
