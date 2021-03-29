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


//PAGINATION
import 'package:catalog/utils/date.dart';
import 'package:catalog/ui/common/paginate.dart';

//GRAPHQL
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/heregjilt_guitsetgel.dart';

import 'search_heregjilt.dart';

class BodlogiinBichigBarimt extends StatefulWidget {
  @override
  _BodlogiinBichigBarimtState createState() => _BodlogiinBichigBarimtState();

}
class _BodlogiinBichigBarimtState extends State<BodlogiinBichigBarimt> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();
  List<BodlogoBb$Query$Paginate$DsBodlogoBb> b_datas = [];


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
    final response = await client.execute(BodlogoBbQuery(variables: BodlogoBbArguments(page: page, size: 10)));
    setState(() {
      b_datas = response.data.paginate.dsBodlogoBb;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;
    });
  }

  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  // Widget getListPoints(BuildContext context, BodlogoBb$Query$Paginate$DsBodlogoBb$DsSubHeregjiltBodlogBarimtBichig point) {
  //
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget>[
  //       Text(point.tailan, style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w500)),
  //       SizedBox(height: 10.0),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: <Widget>[
  //           Expanded(flex: 3, child: Text('Хэрэгжүүлсэн огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
  //           Expanded(flex: 4, child: Text(point.ognoo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
  //         ],
  //       ),
  //       SizedBox(height: 4),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: <Widget>[
  //           Expanded(flex: 3, child: Text('Хэрэгжилтийн шат:', style: TextStyle(color: textColor, fontSize: 12),)),
  //           Expanded(flex: 4, child: Text(point.shat, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
  //         ],
  //       ),
  //       SizedBox(height: 10.0),
  //     ],
  //   );
  // }

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
          title: "Бодлогын баримт бичиг",
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
          margin: EdgeInsets.only(bottom: 50),
          //padding: EdgeInsets.only(left: 10.0, right: 10.0),
          height: double.infinity,
          child: loading ? Loader() : Pagination(
            lastPage: lastPage,
            currentPage: currentPage,
            total: total,
            loading: loading,
            getData: getData,
            itemBuilder: ListView.builder(
              itemCount: b_datas == null ? 0 : b_datas.length,
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
          child: searchHeregjilt(),
        );
      });
    });
  }

  Widget buildTripCard(BuildContext context, int index) {
    final data = b_datas[index];

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
                  Text(data.nerBarimt, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 14),),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 3, child: Text('Салбар:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text(data.salbar, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 3, child: Text('Төлөвлөгөөт хугацаа:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text(data.tHugatsaa, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 3, child: Text('Батлагдсан огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 3, child: Text('Тушаалын дугаар:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text('${data.tolovId}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
//                 backgroundColor: Colors.grey[50],
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Хэрэгжилт', style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  children: <Widget>[
                    b_datas.length <= 0 ? Container() : ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                        itemCount: b_datas[index].dsSubHeregjiltBodlogBarimtBichig == null ? 0 : b_datas[index].dsSubHeregjiltBodlogBarimtBichig.length,
                      padding: EdgeInsets.all(0.0),
                      itemBuilder: (BuildContext context, int index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(b_datas[index].dsSubHeregjiltBodlogBarimtBichig[index].tailan, style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w500)),
                                SizedBox(height: 10.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(flex: 3, child: Text('Хэрэгжүүлсэн огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                    Expanded(flex: 4, child: Text(b_datas[index].dsSubHeregjiltBodlogBarimtBichig[index].ognoo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(flex: 3, child: Text('Хэрэгжилтийн шат:', style: TextStyle(color: textColor, fontSize: 12),)),
                                    Expanded(flex: 4, child: Text(b_datas[index].dsSubHeregjiltBodlogBarimtBichig[index].shat, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                              ],
                            );
                      }
                    ),
                    Divider(),
                  ],

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}









