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

//PAGINATION
import 'package:catalog/utils/date.dart';
import 'package:catalog/ui/common/paginate.dart';

//GRAPHQL
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/huuli_togtoolmj.dart';

import 'search_law.dart';


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

  List<Paginatebodbarbichig$Query$Paginate$DsBodlogoBarimtBichig> barimtbichig = [];
  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;

  @override
  void initState() {
    super.initState();
    getData(1);
  }

  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(PaginatebodbarbichigQuery(variables: PaginatebodbarbichigArguments(page: page, size: 10)));
    setState(() {
      barimtbichig = response.data.paginate.dsBodlogoBarimtBichig;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;
    });
  }
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget buildTripCard(BuildContext context, int index) {
    final law = barimtbichig[index];
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: ListTile(
        title: Text(law.ner, style: TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w600)),
        subtitle: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: <Widget>[
              //     Expanded(flex: 2, child: Text('Салбар:',  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w400))),
              //     Expanded(flex: 3, child: Text(law.salbar,  style: TextStyle(fontSize: 12, color: mainColor, fontWeight: FontWeight.w600)))
              //   ],
              // ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(flex: 2, child: Text('Төлөвлөгөөт хугацаа:',  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w400))),
                  Expanded(flex: 3, child: Text('${law.tHugatsaa}',  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w600)))
                ],
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(flex: 2, child: Text('Батлагдсан огноо:',  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w400))),
                  Expanded(flex: 3, child: Text(date(law.bOgnoo),  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w600)))
                ],
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(flex: 4, child: Text('Тушаалын дугаар:',  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w400))),
                  Expanded(flex: 3, child: Text('${law.tShDugaar}',  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w600))),
                  Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          // Icon(Icons.calendar_today, size: 14, color: mainColor),
                          // SizedBox(width: 4,),
                          // Text('${law.created_at}',  style: new TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal)),
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
          _launchURL('${law.holboos}');
//          _launchURL('${_http.dio.options.baseUrl}${law.file}');
        },
      ),
    );
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
          height: double.infinity,
          padding: EdgeInsets.all(0.0),
          child: loading ? Loader() : Pagination(
            lastPage: lastPage,
            currentPage: currentPage,
            total: total,
            loading: loading,
            getData: getData,
            itemBuilder: ListView.builder(
              itemCount: barimtbichig == null ? 0 : barimtbichig.length,
              itemBuilder: (BuildContext context, int index) =>
                  buildTripCard(context, index),
            ),
          ),
        )
    );

  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context, builder: (context,) {
      return StatefulBuilder(builder:
          (BuildContext context, StateSetter setStateOfBottomSheet) {
        return SingleChildScrollView(
          child: searchLaw(),
        );
      });
    });
  }
}







