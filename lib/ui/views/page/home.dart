import 'package:catalog/ui/components/map_widgets/esri_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/header.dart';
import 'package:catalog/ui/views/page/shuurhai_ajil.dart';
import 'package:flutter/cupertino.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:flutter_icons/ionicons.dart';
import 'package:lambda/modules/network_util.dart';
import '../../components/sidebar.dart';
import 'package:flutter/rendering.dart';
import 'package:lambda/plugins/bubble_bar/BubbleBar.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:lambda/plugins/data_form/loader.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}
class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//  NetworkUtil _http = new NetworkUtil();
  bool loading = true;



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
          title: "УУЛ УУРХАЙ, ХҮНД ҮЙЛДВЭРИЙН ЯАМ",
          scaffold: _scaffoldKey,
        ),
      ),

      body: MaterialApp(
         home: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                  bottom: TabBar(
                    tabs: <Widget>[
                      Tab(child:  Text('Экспортын мэдээ', style: TextStyle(fontSize: 10),)),
                      Tab(child:  Text('Олборлолтын мэдээ', style: TextStyle(fontSize: 10),)),
                      Tab(child:  Text('МББ-ны худалдан авалт', style: TextStyle(fontSize: 10),)),
                      Tab(child:  Text('Таамаг үнэ', style: TextStyle(fontSize: 10),)),

                    ],
                  )
              ),
                body: TabBarView(
                  children: <Widget>[
                    Center(
                      child: Text('Экспортын мэдээ'),
                    ),
                    Center(
                      child: Text('B'),
                    ),
                    Center(
                      child: Text('C'),
                    ),
                    Center(
                      child: Text('C'),
                    ),
                  ],
                )
            ),
         ),
      )




    );

  }






}







