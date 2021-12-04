import 'package:art_portfolio_flutter/repository/user/models/user.dart';
import 'package:art_portfolio_flutter/repository/user/user_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final registrationProvider =
    ChangeNotifierProvider.autoDispose<ArtistRegistrationProvider>((_) {
  return ArtistRegistrationProvider();
});

class ArtistRegistrationProvider extends ChangeNotifier {
  User _newUser = User(
    firstName: '',
    lastName: '',
    description: '',
    github: '',
    instagram: '',
  );

  void setFirstName(String value) {
    _newUser = _newUser.copyWith(firstName: value);
  }

  void setLastName(String value) {
    _newUser = _newUser.copyWith(lastName: value);
  }

  void setDescription(String value) {
    _newUser = _newUser.copyWith(description: value);
  }

  Future<void> submit() async {
    UserRepository.instance.addUser(
      _newUser,
    );
  }
}
