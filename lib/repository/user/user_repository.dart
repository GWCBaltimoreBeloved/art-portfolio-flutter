import 'dart:developer';

import 'package:art_portfolio_flutter/repository/user/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserRepository {
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

  Future<User?> addUser(User user) async {
    try {
      final response = await usersRef.add(user);
      log("User Added Successfully");
      final data = response.get().then((value) => value.data());
      return data;
    } catch (e) {
      log("Error - Failed to add user with error: $e");
    }
  }

  Future<List<User>?> getUsers() async {
    try {
      final snapshots = await usersRef.get();
      return snapshots.docs.map((e) => e.data()).toList();
    } catch (e) {
      log('error getting users: $e');
    }
  }
}
