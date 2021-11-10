import 'dart:developer';

import 'package:art_portfolio_flutter/repository/base_repository.dart';
import 'package:art_portfolio_flutter/repository/user/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepository extends BaseRepository {
  factory UserRepository() => instance;
  static final UserRepository instance = UserRepository._();
  UserRepository._();

  final usersRef =
      FirebaseFirestore.instance.collection('users').withConverter<User>(
            fromFirestore: (snapshot, _) => User.fromJson(
              snapshot.data()!,
              snapshot.id,
            ),
            toFirestore: (item, _) => item.toJson(),
          );

  Future<void> addUser(User user) async {
    return usersRef
        .add(user)
        .then((value) => log("User Added"))
        .catchError((error) => log("Failed to add user: $error"));
  }

  Future<List<User>> getUsers() async {
    final userSnapshots =
        await usersRef.get().then((snapshot) => snapshot.docs);
    return userSnapshots.map((e) => e.data()).toList();
  }
}

class ApiResponse<T> {
  final T? value;
  final String? error;

  ApiResponse(this.value, this.error);
}
