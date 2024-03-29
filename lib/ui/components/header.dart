import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:catalog/core/models/user.dart';
import 'package:catalog/core/viewmodels/user_model.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:catalog/ui/views/profile.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Header extends StatefulWidget {
  final String title;
  final bool showBack;


  final GlobalKey<ScaffoldState> scaffold;

  const Header(
      {Key key,
        this.title,
        this.showBack = false,
        this.scaffold, bool reversed,
      })
      : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  SharedPreferences _prefs;
  bool isAuth = false;
  User user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.checkAuth();
  }

  void checkAuth() async {
    _prefs = await SharedPreferences.getInstance();

    final userState = Provider.of<UserModel>(context, listen: false);


    print(_prefs.getBool('is_auth'));
    if (_prefs.getBool('is_auth') != null &&
        _prefs.getBool('is_auth') == true) {
      setState(() {
        isAuth = true;
        user = userState.getUser;
      });
    }
  }



  Widget userAction() {
    return Row(children: <Widget>[
      InkWell(
        child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.only(right: 10, top: 0, left: 10),
          height: 27,
          decoration: BoxDecoration(
              border: Border.all(
                  color: primaryColor,
                  width: 1.2),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Ionicons.getIconData('ios-person'),
                color: primaryColor,
                size: 16,
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                user != null ? user.firstName : "",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        onTap: () => Navigator.push(
            context, CupertinoPageRoute(builder: (context) => ProfileScreen())),
      ),

    ]);
  }

  Widget defaultAction() {
    return Row(
      children: <Widget>[
//        InkWell(
//          child: Container(
//            margin: EdgeInsets.only(right: 3),
//            padding: EdgeInsets.only(right: 10, top: 0, left: 10),
//            height: 26,
//            decoration: BoxDecoration(
//                border: Border.all(
//                    color: primaryColor,
//                    width: 1.7),
//                borderRadius: BorderRadius.circular(20)),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.center,
//              children: <Widget>[
//                Icon(
//                  Ionicons.getIconData('ios-person'),
//                  color: primaryColor,
//                  size: 16,
//                ),
//                SizedBox(
//                  width: 3,
//                ),
//                Text(
//                  "Нэвтрэх".toUpperCase(),
//                  style: TextStyle(
//                      color: primaryColor,
//                      fontSize: 14,
//                      fontWeight: FontWeight.w600),
//                ),
//              ],
//            ),
//          ),
//          onTap: () => Navigator.pushNamed(context, '/login'),
//        ),
//        InkWell(
//          child: Container(
//            margin: EdgeInsets.only(right: 20),
//            padding: EdgeInsets.only(left: 8),
//            width: 30,
//            height: 40,
//            child: Icon(
//              Ionicons.getIconData('ios-information-circle-outline'),
//              color: primaryColor,
//              size: 33,
//            ),
//          ),
//          onTap: () => Navigator.pushNamed(context, '/about'),
//        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.all(0),
        icon: Container(
          height: 40,
          padding: EdgeInsets.only(left: 15, right: 10, top: 3),
          child: !widget.showBack ?  Icon(
            Feather.getIconData('menu'),
            color:  primaryColor,
            size: 26,
          ): Image.asset(
            "assets/uuhvy_img/back.png",
            fit: BoxFit.contain,
            width: 15,
          ),
          // child: Icon(
          //   !widget.showBack ? Feather.getIconData('menu') :  Icons.arrow_back_ios_rounded,
          //   color:  primaryColor,
          //   size: 26,
          // ),
        ),
        onPressed: () {

          if(widget.showBack){
            Navigator.pop(context);
          } else {
            widget.scaffold.currentState.openDrawer();
          }

        },
      ),
      actions: <Widget>[
        isAuth
            ? userAction()
            : defaultAction()
      ],
      centerTitle: false,
      titleSpacing: 0,
      title: Container(
        padding: EdgeInsets.only(top: 2),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                widget.title,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: primaryColor,
                    fontSize: 14),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
