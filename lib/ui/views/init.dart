import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:catalog/core/models/user.dart';
import 'package:catalog/core/viewmodels/user_model.dart';
import 'package:catalog/core/viewmodels/map_model.dart';
import 'package:package_info/package_info.dart';
import 'package:lambda/modules/network_util.dart';
class InitScreen extends StatefulWidget {
  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  NetworkUtil _http = new NetworkUtil();

  @override
  void initState() {
    // TODO: implement initState
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      bool shouldUpdate = await checkVersion();
      if (!shouldUpdate) {
        getInitData();
      }
    });
    super.initState();
  }

  Future<bool> checkVersion() async {

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    var buildNumber = int.parse(packageInfo.buildNumber);

    String platform = Platform.isAndroid ? "android" : "ios";
    String versionCheckUrl =
        '/app_version.json';
    var response = await _http.get(versionCheckUrl);
    if (response != null &&
        response.data['android_build_number'] != null &&
        response.data['ios_build_number'] != null) {

      if(platform == "android"){
        print(buildNumber);
        print(response.data['android_build_number']);

        if(buildNumber < response.data['android_build_number']){
          this._showDialog(response.data['android_force'], response.data['android_msg']);

          return true;
        } else {
          return false;
        }
      } else {

        if(buildNumber < response.data['ios_build_number']){
          this._showDialog(response.data['ios_force'], response.data['ios_msg']);
          return true;
        } else {
          return false;
        }
      }
    }
    return false;

  }

  void getInitData() async{
    try
    {
      final mapData = Provider.of<MapDataModel>(context,listen: false);
      await mapData.getMapData();

      this.checkAuth(context);

    }on Exception catch(error) {

        ErrorAlert();
    } catch (RuntimeBinderException)
    {
        ErrorAlert();
    }
  }

  Future<void> _launchWeb(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void ErrorAlert(){

    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog

        return AlertDialog(
          title: new Text("Сервертэй холбогдож чадсангүй"),
          content: new Text("Интернет холболт оо шалгана уу"),
          actions: <Widget>[

            FlatButton(
              child: Container(
                padding:
                EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(4)),
                child: Text(
                  "Дахин оролдох",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
                getInitData();
              },
            ),
          ],
        );;
      },
    );

  }

  void _showDialog(bool isForce, String msg) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Шинэ хувилбар"),
          content: new Text(msg ?? ""),
          actions: <Widget>[
            isForce
                ? Container()
                : FlatButton(
                    child: new Text(
                      "Алгасах",
                      style: TextStyle(color: Color(0xff565656)),
                    ),
                    onPressed: () async {
                      await this.checkAuth(context);
                    },
                  ),
            FlatButton(
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(4)),
                child: Text(
                  "Шинэчлэх",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPressed: () {
                if (Platform.isAndroid) {
                  this._launchWeb(
                      "https://play.google.com/store/apps/details?id=mn.khankhulgun.manaikhoroo");
                } else {
                  this._launchWeb(
                      "https://apps.apple.com/us/app/manaikhoroo/id1510196889?ls=1");
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Container(
          child: CircularProgressIndicator(
            strokeWidth: 2,
          ),
        ),
      ),
    );
  }

  void checkAuth(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getBool('is_auth') != null && prefs.getString('user') != null  && prefs.getString('user') != "null" && prefs.getBool('is_auth') == true) {
      final userState = Provider.of<UserModel>(context,listen: false);
      String userData = prefs.getString('user');
      User user = new User.fromJson(jsonDecode(userData));
      userState.setUser(user);
    }

    Navigator.of(context).pushReplacementNamed('/main');
  }

}
