
import 'package:catalog/core/models/user.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../locator.dart';
import 'api.dart';

class UserService {
  NetworkUtil _http = new NetworkUtil();
  final storage = new FlutterSecureStorage();
  Api api = locator<Api>();

  User _user;
  User get userInfo => _user;


  Future<void> sendToken(String token) async {
    var response = await _http.get('/auth/login?code=${token}');
    print(response);
    await storage.write(key: 'jwt', value: response.data['token']);
    await storage.write(key: 'phone', value: response.data['phone']);
    await storage.write(key: 'amount', value: response.data['bonusAmount']);
  }

  Future<bool> logout() async {
    var response = await _http.get('/api/logout');
    if (response.data['ok'] == 1) {
      await storage.deleteAll();
      return true;
    }
    return false;
  }
}
