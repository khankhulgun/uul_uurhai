import 'package:catalog/ui/components/header.dart';
import 'package:catalog/utils/number.dart';
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

//PAGINATION
import 'package:catalog/utils/date.dart';
import 'package:catalog/ui/common/paginate.dart';

//GRAPHQL
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/tusuv_hudav_ajilgaa.dart';

import '../../main.dart';
import 'search_t_haa.dart';


class Zarlaga extends StatefulWidget {
  @override
  _ZarlagaState createState() => _ZarlagaState();

}
class _ZarlagaState extends State<Zarlaga> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();

  List<PaginatetosovZarlaga$Query$Paginate$DsTosovZarlaga> zarlagas = [];

  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;

  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    getData(1);
  }

  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(PaginatetosovZarlagaQuery(variables: PaginatetosovZarlagaArguments(page: page, size: 10)));
    setState(() {
      zarlagas = response.data.paginate.dsTosovZarlaga;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;
    });
  }

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
          title: "ТӨСӨВ, ХАА / Төсвийн зарлага",
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
          //padding: EdgeInsets.only(left: 10.0, right: 10.0),
          height: double.infinity,
          margin: EdgeInsets.all(0.0),
          child: loading ? Loader() : Pagination(
            lastPage: lastPage,
            currentPage: currentPage,
            total: total,
            loading: loading,
            getData: getData,
            itemBuilder: ListView.builder(
              itemCount: zarlagas == null ? 0 : zarlagas.length,
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
          child: searchTHAA(),
        );
      });
    });
  }

  Widget buildTripCard(BuildContext context, int index) {
    final zarlaga = zarlagas[index];

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 5.0),
      margin: EdgeInsets.only(bottom: 10.0),
      child: Card(
        elevation: 0.0,
        child: Container(
          padding: const EdgeInsets.only(top: 15.0, right: 10.0, left: 10.0),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey[300]),
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(zarlaga.torol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 14),),
              SizedBox(height: 8),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 3, child: Text('Огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
                      Expanded(flex: 4, child: Text(date(zarlaga.ognoo), style: TextStyle(color: textColor, fontSize: 12, fontWeight: FontWeight.w600,),)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 3, child: Text('Батлагдсан төсөв:', style: TextStyle(color: textColor, fontSize: 12),)),
                      Expanded(flex: 4, child: Text(number(zarlaga.bTosov), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 3, child: Text('Тодотгосон төсөв:', style: TextStyle(color: textColor, fontSize: 12),)),
                      Expanded(flex: 4, child: Text(number(zarlaga.tTosov), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 3, child: Text('Зөрүү:', style: TextStyle(color: textColor, fontSize: 12),)),
                      Expanded(flex: 4, child: Text(number(zarlaga.zoruu), style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                      margin: new EdgeInsets.only(left: 10.0,right: 10.0,),
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
//                          Text("Гүйцэтгэл", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),),
//                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(flex: 5, child: Text('Гүйцэтгэл  /өссөн дүнгээр/ :', style: TextStyle(color: textColor, fontSize: 12),)),
                              Expanded(flex: 4, child: Text(number(zarlaga.guitsetgel), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                            ],
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(flex: 5, child: Text('Гүйцэтгэл  /хувиар/ :', style: TextStyle(color: textColor, fontSize: 12),)),
                              Expanded(flex: 4, child: Text(number(zarlaga.guitstgel)+'%', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                            ],
                          ),
                        ],
                      )
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







