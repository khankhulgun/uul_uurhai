import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:catalog/ui/components/header.dart';

class SSDetails extends StatefulWidget {
  @override
  _SSDetailsState createState() => _SSDetailsState();
}

class _SSDetailsState extends State<SSDetails> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
            title: "СШ Дэлгэрэнгүй",
            showBack: true,
            scaffold: _scaffoldKey,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Талбайн хэмжээ /га/', style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w500)),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        color: Colors.grey[400],
                        height: 300,
                      )
                    ],
                  )
              ),
            ],
          ),
        )
    );
  }
}
