import 'package:art_portfolio_flutter/repository/user/models/user.dart';
import 'package:art_portfolio_flutter/repository/user/user_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeProvider = ChangeNotifierProvider.autoDispose<HomeProvider>((_) {
  return HomeProvider();
});

class HomeProvider extends ChangeNotifier {
  int count = 0;
  List<User>? users;

  void increment() {
    count++;
    notifyListeners();
  }

  void addUser() {
    UserRepository.instance.addUser(
      User(
        email: 'test',
        firstName: 'Sydney',
        lastName: 'test',
      ),
    );
  }

  Future<void> getUsers() async {
    users = await UserRepository.instance.getUsers();
    notifyListeners();
  }
}
