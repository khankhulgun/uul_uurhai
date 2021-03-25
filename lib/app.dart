import 'dart:convert';

import 'package:flutter/material.dart' hide Router;
import 'package:lambda/modules/gcm/notify.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:catalog/core/viewmodels/utils_model.dart';
import 'package:catalog/router.dart';
import 'package:lambda/modules/agent/agent_state.dart';
import 'package:provider/provider.dart';
import 'core/constants/values.dart';
import 'core/models/user.dart';
import 'core/viewmodels/user_model.dart';
import 'core/viewmodels/map_model.dart';
import 'core/viewmodels/regions_model.dart';
import 'locator.dart';


class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Notify fcm = new Notify();
  BuildContext ctx;

  SharedPreferences _prefs;
  bool isAuth = false;
  User user;

  Future checkAuth() async {
    _prefs = await SharedPreferences.getInstance();


    if (_prefs.getBool('is_auth') != null && _prefs.getString('user') != null && _prefs.getString('user') != "null" && _prefs.getBool('is_auth') == true) {

      setState(() {
        isAuth = true;
        user = User.fromJson(json.decode(_prefs.getString('user')));
      });
    } else {
      _prefs.setBool('is_auth', false);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    setupLocator();

    NetworkUtil network = locator<NetworkUtil>();
    network.initNetwork(baseUrl);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      fcm.getPermission(baseUrl, ctx);
      await fcm.configFcm();
      await this.checkAuth();
      if (isAuth) {
        await fcm.setToken("/vpf/api/token", user.id);
      } else {
        //await fcm.setToken("/vpf/api/token", 0);
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      ctx = context;

    });

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserModel()),
        ChangeNotifierProvider(create: (_) => AgentState()),
        ChangeNotifierProvider(create: (_) => UtilsModel()),
        ChangeNotifierProvider(create: (_) => MapDataModel()),
        ChangeNotifierProvider(create: (_) => RegionModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Манай хороо',

        theme: ThemeData(
          fontFamily: "Roboto-Condensed",
//          primaryColor: Colors.green,
//          textTheme: TextTheme(
//            headline: TextStyle(color: Colors.green),
//            title: TextStyle(color: Colors.green),
//            body1: TextStyle(color: Colors.green),
//          ),
        ),
        initialRoute: '/',
        routes: Router.routes,

      ),
    );
  }
}
