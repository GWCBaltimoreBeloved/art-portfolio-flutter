import 'package:flutter/foundation.dart';
import 'package:gwc_art_portfolio_flutter/repository/user/models/user.dart';
import 'package:gwc_art_portfolio_flutter/repository/user/user_repository.dart';

class HomeProvider extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
    UserRepository.instance.addUser(User(email: 'test', firstName: 'test',lastName: 'test',),);
  }

  
}
