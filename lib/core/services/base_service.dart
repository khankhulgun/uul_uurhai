import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:catalog/core/models/user.dart';
import 'package:catalog/core/viewmodels/user_model.dart';
import 'package:lambda/modules/agent/agent_util.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BaseService {
  AgentUtil _agent = new AgentUtil();
  NetworkUtil _http = new NetworkUtil();
  SharedPreferences prefs;

  final Map<String, Function> notifierList = new Map();

  registerNotifier(String modelName, Function modelNotifier) {
    notifierList[modelName] = modelNotifier;
  }

  callNotifier(String modelName) {
    if (notifierList.containsKey(modelName)) {
      notifierList[modelName]();
    }
  }

  Future<void> setToken(int userId, String token) async {
    await _http.get('/loyalty/token/${userId}/${token}');
  }

  Future<void> updateUser(context, int userId) async {
    prefs = await SharedPreferences.getInstance();
    await _agent.updateUserState('/loyalty/user/${userId}');
    final userState = Provider.of<UserModel>(context, listen: false);
    String userData = prefs.getString('user');
    User user = new User.fromJson(jsonDecode(userData));
    userState.setUser(user);
  }
}
