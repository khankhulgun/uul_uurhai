import 'package:catalog/ui/components/header.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:flutter_icons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lambda/modules/network_util.dart';
import '../../../components/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:lambda/plugins/data_form/loader.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


import '../../main.dart';

class tusgai{
  final String togtool;
  final String ognoo;
  final String batlagdsanTalbainHemjee;
  final String dugaar;
  final String date;
  final String oroltssonAANToo;
  final String zarlasanTalbainHemjee;
  final String zarlasanTalbainToo;
  final String olgodsonTalbainHemjee;
  final String olgogdsonTalbainToo;
  final String TuvlujvvlsenOrlogo;
  tusgai(
      this.togtool,
      this.ognoo,
      this.batlagdsanTalbainHemjee,
      this.dugaar,
      this.date,
      this.oroltssonAANToo,
      this.zarlasanTalbainHemjee,
      this.zarlasanTalbainToo,
      this.olgodsonTalbainHemjee,
      this.olgogdsonTalbainToo,
      this.TuvlujvvlsenOrlogo,
      );
}

class SongonShalgaruulalt extends StatefulWidget {
  @override
  _SongonShalgaruulaltState createState() => _SongonShalgaruulaltState();

}
class _SongonShalgaruulaltState extends State<SongonShalgaruulalt> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();
  bool loading = true;

  @override
  void initState() {
    super.initState();
  }
  final List<tusgai> tusgaiZuvshuuruls = [
    tusgai("2012-12", "2011-12-22",  "11222",  "2015-12-12", "2011-12-12",  "201,112,12.09", "1,112,12.09", "1,112", "201,112,12.09", "1,112,12.09", "1,112" ),
    tusgai("2012-12", "2011-12-22",  "11222",  "2015-12-12", "2011-12-12",  "201,112,12.09", "1,112,12.09", "1,112", "201,112,12.09", "1,112,12.09", "1,112" ),
  ];
  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
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
          title: "БУСАД / Сонгон шалгаруулалт",
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
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: ListView.builder(
          itemCount: tusgaiZuvshuuruls == null ? 0 : tusgaiZuvshuuruls.length,
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
                          child: Text('- Тусгай зөвшөөрөл '),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Сонгон шалгаруулалт'),
                        ),
                        FlatButton(
//                      onPressed: () => _onButtonDeDtses(),
                          onPressed: (){},
                          child: Text('- Эрдэс баялаг мэргэжлийн зөвлөл'),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Ажиллах хүчний мэдээлэл'),
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
    final tusgai = tusgaiZuvshuuruls[index];

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 5.0),
      margin: EdgeInsets.only(bottom: 0.0),
      child: Card(
        elevation: 2.0,
        child: Container(
          padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey[300]),
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 2, child: Container(padding: EdgeInsets.all(0.0), child: Image.asset('assets/uuhvy_img/uurkhai.png', height: 100,  fit: BoxFit.cover))),
                      Expanded(flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('ЗГ-ын тогтоол:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text(tusgai.togtool, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('Огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text(tusgai.ognoo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('Батлагдсан талбайн хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text(tusgai.batlagdsanTalbainHemjee, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10.0),
                ],
              ),

              ExpansionTile(
//                 backgroundColor: Colors.grey[50],
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Сонгон шалгаруулалт', style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w600)),
                  ],
                ),
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Дугаар:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.dugaar, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Огноо:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.date, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Оролцсон ААН-ийн тоо:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.oroltssonAANToo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Зарласан талбайн хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.zarlasanTalbainHemjee, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Зарласан талбайн тоо:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.zarlasanTalbainToo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Зарласан талбайн хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.zarlasanTalbainHemjee, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Олгогдсон талбайн хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.olgodsonTalbainHemjee, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Олгогдсон талбайн тоо:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.olgogdsonTalbainToo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Төвлөрүүлсэн орлого:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.TuvlujvvlsenOrlogo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 20.0),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Дугаар:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.dugaar, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Огноо:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.date, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Оролцсон ААН-ийн тоо:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.oroltssonAANToo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Зарласан талбайн хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.zarlasanTalbainHemjee, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Зарласан талбайн тоо:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.zarlasanTalbainToo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Зарласан талбайн хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.zarlasanTalbainHemjee, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Олгогдсон талбайн хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.olgodsonTalbainHemjee, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Олгогдсон талбайн тоо:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.olgogdsonTalbainToo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Төвлөрүүлсэн орлого:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.TuvlujvvlsenOrlogo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 20.0),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Дугаар:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.dugaar, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Огноо:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.date, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Оролцсон ААН-ийн тоо:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.oroltssonAANToo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Зарласан талбайн хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.zarlasanTalbainHemjee, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Зарласан талбайн тоо:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.zarlasanTalbainToo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Зарласан талбайн хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.zarlasanTalbainHemjee, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Олгогдсон талбайн хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.olgodsonTalbainHemjee, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Олгогдсон талбайн тоо:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.olgogdsonTalbainToo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 5, child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('Төвлөрүүлсэн орлого:', style: TextStyle(color: textColor, fontSize: 12),),
                          )),
                          Expanded(flex: 4, child: Text(tusgai.TuvlujvvlsenOrlogo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 20.0),
                    ],
                  ),
                ],

              ),

            ],
          ),
        ),
      ),
    );
  }
}






