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

class IH_hural extends StatefulWidget {
  @override
  _IH_huralState createState() => _IH_huralState();

}
class _IH_huralState extends State<IH_hural> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<UlsIhHuralTogtool$Query$Paginate$AaUlsIhHuralTogtool> huuls = [];
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
    final response = await client.execute(UlsIhHuralTogtoolQuery(variables: UlsIhHuralTogtoolArguments(page: page, size: 10)));
    setState(() {
      huuls = response.data.paginate.aaUlsIhHuralTogtool;
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
    final law = huuls[index];
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      margin: EdgeInsets.symmetric(horizontal: 0.0),
      child: ListTile(
        title: Text(law.togtool, style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600)),
        subtitle: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.only(left: 10.0, top: 5.0),
              //   child: new Text(law.zaalt,  style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w400)),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(Icons.today, size: 14, color: mainColor),
                  //Text(' ${law.created_at}',  style: new TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal)),
                  Text('2020-12-01',  style: new TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal)),
                ],
              )
            ]
        ),
        trailing: Icon(Icons.picture_as_pdf, color: Colors.red,),
        onTap: (){
          _launchURL('${law.holhoos}');
          //_launchURL('${_http.dio.options.baseUrl}${law.holboos}');
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
            title: "ХУУЛЬ ТОГТООМЖ / УИХ-н тогтоол",
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
          margin: EdgeInsets.all(0.0),
          child: loading ? Loader() : Pagination(
            lastPage: lastPage,
            currentPage: currentPage,
            total: total,
            loading: loading,
            getData: getData,
            itemBuilder: ListView.builder(
              itemCount: huuls == null ? 0 : huuls.length,
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







