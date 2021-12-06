import 'package:art_portfolio_flutter/repository/user/models/user.dart';
import 'package:art_portfolio_flutter/repository/user/user_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final artistListProvider = ChangeNotifierProvider.autoDispose((_) {
  return ArtistListProvider();
});

class ArtistListProvider extends ChangeNotifier {
  List<User>? users;

  ArtistListProvider() {
    getUsers();
  }

  Future<void> getUsers() async {
    users = await UserRepository.instance.getUsers();
    notifyListeners();
  }
}
