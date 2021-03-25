import 'package:catalog/ui/components/header.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:flutter_icons/ionicons.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../components/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:lambda/plugins/data_form/loader.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vector_math/vector_math_64.dart' as math;

import '../../main.dart';

class law {
  final String title;
  final String salbar;
  final String hugatsaa;
  final String batlagdanOgnoo;
  final String toot;
  final String file;
  final String created_at;

  law(
      this.title,
      this.salbar,
      this.hugatsaa,
      this.batlagdanOgnoo,
      this.toot,
      this.file,
      this.created_at,
      );
}
class bodlogiin_b_b extends StatefulWidget {
  @override
  _zasgiin_gazriin_togtoolState createState() => _zasgiin_gazriin_togtoolState();

}
class _zasgiin_gazriin_togtoolState extends State<bodlogiin_b_b> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();
  bool loading = true;

  final List<law> laws = [
    law("Төрөөс газрын тосны салбарыг хөгжүүлэх талаар баримтлах бодлогыг хэрэгжүүлэх 2018-2027 оны үйл ажиллагааны төлөвлөгөө батлах тухай", "ГБ, УУ", "Урт (5-аас дээш жил)", "2019-08-08", "А/163", "http://www.africau.edu/images/default/sample.pdf", "2021-01-01"),
    law("Төрөөс газрын тосны салбарыг хөгжүүлэх талаар баримтлах бодлогыг хэрэгжүүлэх 2018-2027 оны үйл ажиллагааны төлөвлөгөө батлах тухай", "ГБ, УУ", "Урт (5-аас дээш жил)", "2019-08-08", "А/163", "http://www.africau.edu/images/default/sample.pdf", "2021-01-01"),
    law("Төрөөс газрын тосны салбарыг хөгжүүлэх талаар баримтлах бодлогыг хэрэгжүүлэх 2018-2027 оны үйл ажиллагааны төлөвлөгөө батлах тухай", "ГБ, УУ", "Урт (5-аас дээш жил)", "2019-08-08", "А/163", "http://www.africau.edu/images/default/sample.pdf", "2021-01-01"),
    law("Төрөөс газрын тосны салбарыг хөгжүүлэх талаар баримтлах бодлогыг хэрэгжүүлэх 2018-2027 оны үйл ажиллагааны төлөвлөгөө батлах тухай", "ГБ, УУ", "Урт (5-аас дээш жил)", "2019-08-08", "А/163", "http://www.africau.edu/images/default/sample.pdf", "2021-01-01"),
    law("Төрөөс газрын тосны салбарыг хөгжүүлэх талаар баримтлах бодлогыг хэрэгжүүлэх 2018-2027 оны үйл ажиллагааны төлөвлөгөө батлах тухай", "ГБ, УУ", "Урт (5-аас дээш жил)", "2019-08-08", "А/163", "http://www.africau.edu/images/default/sample.pdf", "2021-01-01"),
  ];

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      drawer: Drawer(
        elevation: 5,
        child: SidebarScreen(),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: Header(
          title: "ХУУЛЬ ТОГТООМЖ / Бодлогын баримт бичиг",
          scaffold: _scaffoldKey,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onButtonPressed(),
        child: Icon(Feather.getIconData('search')),
        backgroundColor: mainColor,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(0.0),
        child: ListView.builder(
          itemCount: laws == null ? 0 : laws.length,
          itemBuilder: (BuildContext context, int index) =>
              buildTripCard(context, index),
        ),
      ),
    );

  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context, builder: (context,) {
      return StatefulBuilder(builder:
          (BuildContext context, StateSetter setStateOfBottomSheet) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Mонгол улсын хууль'),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Улсын их хурлын тогтоол'),
                        ),
                        FlatButton(
//                      onPressed: () => _onButtonDeDtses(),
                          onPressed: (){},
                          child: Text('- Бодлогын баримт бичиг'),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Засгийн газрын тогтоол'),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Дүрэм журам'),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 9,
                      child: Container(
                        padding: EdgeInsets.only(top: 7.0),
                        margin: EdgeInsets.only(right: 5.0),
                        height: 42.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius:
                                BorderRadius.circular(4)),
                            labelText: 'Хайх',
                            //  labelStyle: TextStyle(color:primaryColor),
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(147, 157, 186, .78),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 1)),
                            errorStyle: TextStyle(height: 0),

                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: MaterialButton(
                          height: 34.0,
                          padding: EdgeInsets.all(0.0),
                          color: mainColor,
                          textColor: Colors.white,
                          child: new Text(
                            "Хайх",
                            style: TextStyle(fontSize: 15),
                          ),
                          onPressed: () {
//                      setStateOfBottomSheet(() {
//                        this.saveData(true);
//                      });
                          },
                        )
                    )
                  ],
                ),
              ],
            ),

          ),
        );
      });
    });
  }

  Widget buildTripCard(BuildContext context, int index) {
    final law = laws[index];
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: ListTile(
        title: Text(law.title, style: TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w600)),
        subtitle: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(flex: 2, child: Text('Салбар:',  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w400))),
                  Expanded(flex: 3, child: Text(law.salbar,  style: TextStyle(fontSize: 12, color: mainColor, fontWeight: FontWeight.w600)))
                ],
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(flex: 2, child: Text('Төлөвлөгөөт хугацаа:',  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w400))),
                  Expanded(flex: 3, child: Text(law.hugatsaa,  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w600)))
                ],
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(flex: 2, child: Text('Батлагдсан огноо:',  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w400))),
                  Expanded(flex: 3, child: Text(law.batlagdanOgnoo,  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w600)))
                ],
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(flex: 4, child: Text('Тушаалын дугаар:',  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w400))),
                  Expanded(flex: 3, child: Text(law.toot,  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w600))),
                  Expanded(
                      flex: 3,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Icon(Icons.calendar_today, size: 14, color: mainColor),
                          SizedBox(width: 4,),
                          Text('${law.created_at}',  style: new TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal)),
                        ],
                    )
                  )
                ],
              ),
              SizedBox(height: 5.0),
            ]
        ),
        trailing: Icon(Icons.picture_as_pdf, color: Colors.red,),
        onTap: (){
          _launchURL('${law.file}');
//          _launchURL('${_http.dio.options.baseUrl}${law.file}');
        },
      ),
    );
  }
}







