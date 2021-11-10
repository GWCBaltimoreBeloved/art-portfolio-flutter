import 'package:art_portfolio_flutter/repository/user/models/user.dart';
import 'package:art_portfolio_flutter/repository/user/user_repository.dart';
import 'package:flutter/foundation.dart';

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
        firstName: 'test',
        lastName: 'test',
      ),
    );
  }

  Future<void> getUsers() async {
    users = await UserRepository.instance.getUsers();
    notifyListeners();
  }
}
