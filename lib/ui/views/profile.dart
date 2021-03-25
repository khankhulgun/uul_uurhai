
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter/material.dart';
import 'package:lambda/plugins/data_form/lambda_data_form.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:catalog/core/viewmodels/user_model.dart';
import 'package:provider/provider.dart';
import 'package:catalog/core/models/user.dart';
class ProfileScreen extends StatefulWidget {
  final String location;

  ProfileScreen({Key key, this.location}) : super(key: key);

  @override
  _ProfileScreen createState() => new _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  NetworkUtil _netUtil = new NetworkUtil();

  @override
  void initState() {
    super.initState();
  }

  void onSuccess(dynamic data) async {
    final userState = Provider.of<UserModel>(context, listen: false);
    User user = userState.getUser;
    var prefs = await SharedPreferences.getInstance();

    user.email = data["email"];
    user.lastName = data["last_name"];
    user.firstName = data["first_name"];
    user.phone = data["phone"];
    user.registerNumber = data["register_number"];
    user.avatar = data["avatar"];
    userState.setUser(user);

    prefs.setString('user', jsonEncode(user));
    AwesomeDialog(
      context: context,
      dialogType: DialogType.SUCCES,
      animType: AnimType.BOTTOMSLIDE,
      headerAnimationLoop: false,
      title: 'Амжилттай',
      desc: 'Хувийн мэдээлэл илгээгдлээ',
      btnOkOnPress: () {

      },
      btnOkText: "Хаах",
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context, listen: false).getUser;

    Map<String, dynamic> hiddenData = {
//      "district_id":user.districtId,
//      "user_id":user.id,
//      "tuluw_id":1,
      "shaardlaga_hangaigui_shaltgaan":" ",
//      "region_id":user.regionId
    };
    if(widget.location != "" && widget.location != null){
      hiddenData["location"] = widget.location;
    }
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Хувийн мэдээлэл',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.only(right: 0, top: 0, left: 0, bottom: 10),
            child:Column(
              children: <Widget>[
                LambdaDataForm(
                    onSuccess: onSuccess,
                    offlineSave:false,
                    schemaID: "user_profile",
                    editMode: true,
                    editId:user.id
                ),

              ],
            )
        ),
      ),
    );
  }
}
