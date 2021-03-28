import 'package:catalog/ui/components/header.dart';
import 'package:catalog/utils/number.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:flutter_icons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../components/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:lambda/plugins/data_form/loader.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


import 'package:catalog/utils/date.dart';
import 'package:catalog/ui/common/paginate.dart';

//GRAPHQL
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/heregjilt_guitsetgel.dart';

class Hurungu_oruulalt extends StatefulWidget {
  @override
  _Hurungu_oruulaltState createState() => _Hurungu_oruulaltState();
}
class _Hurungu_oruulaltState extends State<Hurungu_oruulalt> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();
  List<HorongoOruulaltTH$Query$Paginate$DsHorongoOruulaltTH> datas = [];

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
    final response = await client.execute(HorongoOruulaltTHQuery(variables: HorongoOruulaltTHArguments(page: page, size: 10)));
    setState(() {
      datas = response.data.paginate.dsHorongoOruulaltTH;
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
          title: "Хөрөнгө оруулалтын төсөл, хөтөлбөр",
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
          itemCount: datas == null ? 0 : datas.length,
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
                          child: Text('- Бодлогын баримт бичиг'),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Засгийн газрын тогтоол'),
                        ),
                        FlatButton(
//                      onPressed: () => _onButtonDeDtses(),
                          onPressed: (){},
                          child: Text('- Ажлын хэсэг'),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Хөрөнгө оруулалтын төсөл, хөтөлбөр'),
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
    final data = datas[index];

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(data.tosolNer, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 14),),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(flex: 2, child: Text('Хугацаа:', style: TextStyle(color: textColor, fontSize: 12),)),
                                        Expanded(flex: 4, child: Text(data.hugatsaa, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(flex: 2, child: Text('Хөрөнгийн эх үүсвэр:', style: TextStyle(color: textColor, fontSize: 12),)),
                                        Expanded(flex: 4, child: Text(data.horongooruulalt, style: TextStyle(color: textColor, fontWeight: FontWeight.w500, fontSize: 12),)),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(flex: 2, child: Text('Төсөвт өртөг:', style: TextStyle(color: textColor, fontSize: 12),)),
                                        Expanded(flex: 4, child: Text(number(data.tosovtOrtog), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(flex: 2, child: Text('Хэрэгжүүлэгч:', style: TextStyle(color: textColor, fontSize: 12),)),
                                        Expanded(flex: 4, child: Text(data.heregjuulegch, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(flex: 2, child: Text('Төслийн зардал:', style: TextStyle(color: textColor, fontSize: 12),)),
                                        Expanded(flex: 4, child: Text(number(data.tosliinZardal), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                               child:  CircularPercentIndicator(
                                  radius: 55.0,
                                  animationDuration: 1500,
                                  lineWidth: 4.0,
                                  animation: true,
                                  percent: data.heregjiltHuvi != null ? int.parse(data.heregjiltHuvi) / 100 : 0,
                                  center: Text(
                                    '${data.heregjiltHuvi}%',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xfffcb85f)),
                                  ),
                                  circularStrokeCap: CircularStrokeCap.round,
                                  progressColor: Color(0xfffcb85f),
                                ),
                              ),

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
                      Text('Хэрэгжилт', style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(data.hBaidal, style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.0),
                      ],
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







