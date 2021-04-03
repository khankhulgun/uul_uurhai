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
import 'package:catalog/graphql/queries/tusulvvdiin_medeelel.dart';

import '../../main.dart';
import 'search_t_m.dart';



class Vildver extends StatefulWidget {
  @override
  _VildverState createState() => _VildverState();

}
class _VildverState extends State<Vildver> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();

  List<Uildver$Query$Paginate$DsUildver> vildvers = [];
  List<Uildver$Query$Paginate$DsUildver$DsSubUildverlel> sub = [];
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
    final response = await client.execute(UildverQuery(variables: UildverArguments(page: page, size: 10)));
    setState(() {
      vildvers = response.data.paginate.dsUildver;
      //sub = response.data.paginate.dsUildver;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;
      // print(olborlolt["dsSubolborlolt"]);
    });
  }

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
          title: "ТӨСЛҮҮДИЙН МЭДЭЭЛЭЛ / Үйлдвэр",
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
              itemCount: vildvers == null ? 0 : vildvers.length,
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
          child: searchTuslvvdiinMedeelel(),
        );
      });
    });
  }

  Widget buildTripCard(BuildContext context, int index) {
    final uurhai = vildvers[index];

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
                          child: Image.asset('assets/uuhvy_img/new_uildwer.png', height: 90,  fit: BoxFit.cover)
                      ),
                      Expanded(flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(uurhai.uildverNer, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 14),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('Аймаг / Нийслэл:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text(uurhai.aimagname, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('Сум / Дүүрэг:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text(uurhai.sumname, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('Баг / Хороо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text(uurhai.bagname, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                      Text('Үйлдвэрлэл', style: TextStyle(fontSize: 12, fontFamily: "Roboto-Condensed", color: textColor, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  children: <Widget>[
                    vildvers.length <= 0 ? Container() : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: vildvers[index].dsSubUildverlel == null ? 0 : vildvers[index].dsSubUildverlel.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(flex: 1, child: Text(vildvers[index].dsSubUildverlel[index].torol, textAlign: TextAlign.center, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                  SizedBox(width: 10),
                                  Expanded(flex: 5,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(flex: 5, child: Text('Олборлолт эхэлсэн огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                            Expanded(flex: 3, child: Text(vildvers[index].dsSubUildverlel[index].uEhelsen, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(flex: 5, child: Text('ТЭЗҮ батлагдсан огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                            Expanded(flex: 3, child: Text(vildvers[index].dsSubUildverlel[index].tezu, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(flex: 5, child: Text('Батлагдсан нөөц:', style: TextStyle(color: textColor, fontSize: 12),)),
                                            Expanded(flex: 3, child: Text('${vildvers[index].dsSubUildverlel[index].bNoots}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(flex: 5, child: Text('Хүчин чадал:', style: TextStyle(color: textColor, fontSize: 12),)),
                                            Expanded(flex: 3, child: Text('${vildvers[index].dsSubUildverlel[index].bHuchinChadal}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(flex: 5, child: Text('Ажилчдын тоо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                            Expanded(flex: 3, child: Text('${vildvers[index].dsSubUildverlel[index].ajilchinToo}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              // Container(
                              //   width: MediaQuery.of(context).size.width,
                              //   //child: Image.network(olborlolt[index].dsSubOlborlolt[index].zurag, fit: BoxFit.cover),
                              //     child: Image.network(
                              //       "https://app.mmhi.gov.mn/" +olborlolt[index].dsSubOlborlolt[index].zurag,
                              //       fit: BoxFit.cover,
                              //     ),
                              //
                              // )
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







