

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gwc_art_portfolio_flutter/repository/base_repository.dart';
import 'package:gwc_art_portfolio_flutter/repository/user/models/user.dart';

class UserRepository extends BaseRepository {
  factory UserRepository() => instance;
  static final UserRepository instance = UserRepository._();
  UserRepository._();

  // final usersRef = BaseRepository.getReference<User>('users');
  final usersRef = FirebaseFirestore.instance
        .collection('users')
        .withConverter<User>(
          fromFirestore: (snapshot, _) => User.fromJson(snapshot.data()!),
          toFirestore: (item, _) => item.toJson(),
        );

  Future<void> addUser(User user) async {
    return usersRef
        .add(user)
        .then((value) => log("User Added"))
        .catchError((error) => log("Failed to add user: $error"));
  }
}

class ApiResponse<T> {
  final T? value;
  final String? error;

  ApiResponse(this.value, this.error);
}
