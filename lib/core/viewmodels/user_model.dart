import 'dart:io';


import 'package:catalog/core/services/user_service.dart';

import '../../locator.dart';
import '../models/user.dart';
import 'base_model.dart';

class UserModel extends BaseModel {
  UserService _api = locator<UserService>();

  UserModel();
  User _user;

  void setUser(User data) {
    _user = data;
    notifyListeners();
  }

  Future updateUser(User data, dynamic avatar) async {
    setLoading(true);
//    await _api.updateUser(data, avatar);
    setLoading(false);
  }

  User get user => _user;
  User get getUser => _user;
}
