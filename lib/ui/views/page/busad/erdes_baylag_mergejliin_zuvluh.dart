import 'package:catalog/ui/components/header.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:flutter_icons/ionicons.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
import 'package:catalog/graphql/queries/busad.dart';

import 'search_busad.dart';

class ErdesBaylagMergejliinZuvlul extends StatefulWidget {
  @override
  _ErdesBaylagMergejliinZuvlulState createState() => _ErdesBaylagMergejliinZuvlulState();

}
class _ErdesBaylagMergejliinZuvlulState extends State<ErdesBaylagMergejliinZuvlul> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();

  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;

  bool _isVisible = false;
  List<EBMergejilZovlol$Query$Paginate$AaEBMergejilZovlol> erdes_baylag_mer_zuv = [];

  @override
  void initState() {
    super.initState();
    getData(1);
  }
  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(EBMergejilZovlolQuery(variables: EBMergejilZovlolArguments(page: page, size: 10)));
    setState(() {
      erdes_baylag_mer_zuv = response.data.paginate.aaEBMergejilZovlol;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;

      print(erdes_baylag_mer_zuv);
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
          title: "БУСАД / Эрдэс баялаг мэргэжлийн зөвлөл",
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
              itemCount: erdes_baylag_mer_zuv == null ? 0 : erdes_baylag_mer_zuv.length,
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
          child: searchBusad(),
        );
      });
    });
  }


  Widget buildTripCard(BuildContext context, int index) {
    final tusgai = erdes_baylag_mer_zuv[index];

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
                      Expanded(flex: 2,
                          child: SvgPicture.asset('assets/uuhvy_img/new_mzuvlul.svg', height: 100,  fit: BoxFit.cover)
                      ),
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('ЭБМЗ-ын салбар:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text('${tusgai.ebmzSalbarId}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('Он:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text('${tusgai.jilId}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('Хэлэлцсан асуудлын тоо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text('${tusgai.hhAsuudalToo}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                  tilePadding: EdgeInsets.all(0.0),
                  childrenPadding: EdgeInsets.all(0.0),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Хэлэлцсэн асуудлууд', style: TextStyle(fontSize: 12, fontFamily: "Roboto-Condensed", color: textColor, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  children: <Widget>[
                    erdes_baylag_mer_zuv.length <= 0 ? Container() : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: erdes_baylag_mer_zuv[index].dsSubTezu == null ? 0 : erdes_baylag_mer_zuv[index].dsSubTezu.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int indexSub) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubTezu[indexSub].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubTezu[indexSub].buteegdehuun, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubTezu[indexSub].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubTezu[indexSub].tolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 20.0),
                            ],
                          );
                        }
                    ),
                    SizedBox(height: 10),
                    erdes_baylag_mer_zuv.length <= 0 ? Container() : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: erdes_baylag_mer_zuv[index].dsSubBu == null ? 0 : erdes_baylag_mer_zuv[index].dsSubBu.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int indexSu) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubBu[indexSu].asuudalD}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubBu[indexSu].bTorol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubBu[indexSu].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubBu[indexSu].tolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 20.0),
                            ],
                          );
                        }
                    ),
                    SizedBox(height: 10),
                    erdes_baylag_mer_zuv.length <= 0 ? Container() : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: erdes_baylag_mer_zuv[index].dsSubGt == null ? 0 : erdes_baylag_mer_zuv[index].dsSubGt.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int index1su) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubGt[index1su].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubGt[index1su].gtTorol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubGt[index1su].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubGt[index1su].tolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 20.0),
                            ],
                          );
                        }
                    ),
                    SizedBox(height: 10),
                    erdes_baylag_mer_zuv.length <= 0 ? Container() : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: erdes_baylag_mer_zuv[index].dsSubNoots == null ? 0 : erdes_baylag_mer_zuv[index].dsSubNoots.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int indexSub) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubNoots[indexSub].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubNoots[indexSub].buteegdehuun, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubNoots[indexSub].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubNoots[indexSub].tolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 20.0),
                            ],
                          );
                        }
                    ),
                    SizedBox(height: 10),
                    erdes_baylag_mer_zuv.length <= 0 ? Container() : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: erdes_baylag_mer_zuv[index].dsSubUhggsa == null ? 0 : erdes_baylag_mer_zuv[index].dsSubUhggsa.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int indexSub) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubUhggsa[indexSub].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubUhggsa[indexSub].torol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubUhggsa[indexSub].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubUhggsa[indexSub].uhggsaTolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 20.0),
                            ],
                          );
                        }
                    ),
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







