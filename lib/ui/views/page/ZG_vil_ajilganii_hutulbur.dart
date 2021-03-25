import 'package:catalog/ui/components/header.dart';
import 'package:catalog/ui/views/main.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart' as prefix0;
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:flutter_icons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../components/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:lambda/plugins/data_form/loader.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


import '../../../main.dart';

class data{
  final String image;
  final String shortDesc;
  final String huvi;
  final String heregjihHugatsaa;
  final String ehVvsver;
  final String tusuv;
  final String suuriTvwshin;
  final String on;
  final String vrdvn;
  final String tusuvsay;
  final String desc;
  data(
      this.image,
      this.shortDesc,
      this.huvi,
      this.heregjihHugatsaa,
      this.ehVvsver,
      this.tusuv,
      this.suuriTvwshin,
      this.on,
      this.vrdvn,
      this.tusuvsay,
      this.desc,
      );
}

class ZGhutulbur extends StatefulWidget {
  @override
  _ZGhutulburState createState() => _ZGhutulburState();
}
class _ZGhutulburState extends State<ZGhutulbur> {
  //List<Project> projects = [];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();
  bool loading = true;

  @override
  void initState() {
    super.initState();
  }
  final List<data> datas = [
    data(
      "assets/uuhvy_img/zg.png",
      "3.2.1.1 Оюутолгойн төслийг Монгол Улсын хууль тогтоомжид нийцүүлж, далд уурхайг ашиглалтад оруулна. Монгол Улсын хууль тогтоомжид нийцүүлж, далд уурхайг ашиглалтад оруулна.",
      "96",
      "2020-12-01",
      "Гадаадын хөрөнгө оруулалт, олон улсын банк, санхүүгийн байгууллагын зээлээр",
      "1,462,473.9",
      "Далд уурхайн бүтээн байгуулалт 26 хувь.",
      "2021",
      "Далд уурхайн бүтээн байгуулалт 54 хувь.",
      "1,232,006.2 ",
      "Салбарын сайд Г.Ёндон, дэд сайд О.Батнайрамдал нар 2020 оны 12 дугаар сарын 14-ний өдөр “Эрдэнэт үйлдвэр” ТӨҮГ-ын",
    ),
    data(
      "assets/uuhvy_img/zg.png",
      "3.2.1.1 Оюутолгойн төслийг Монгол Улсын хууль тогтоомжид нийцүүлж, далд уурхайг ашиглалтад оруулна. Монгол Улсын хууль тогтоомжид нийцүүлж, далд уурхайг ашиглалтад оруулна.",
      "86",
      "2020-12-01",
      "Гадаадын хөрөнгө оруулалт, олон улсын банк, санхүүгийн байгууллагын зээлээр",
      "1,462,473.9",
      "Далд уурхайн бүтээн байгуулалт 26 хувь.",
      "2021",
      "Далд уурхайн бүтээн байгуулалт 54 хувь.",
      "1,232,006.2 ",
      "Салбарын сайд Г.Ёндон, дэд сайд О.Батнайрамдал нар 2020 оны 12 дугаар сарын 14-ний өдөр “Эрдэнэт үйлдвэр” ТӨҮГ-ын",
    ),
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
          title: "ЗГ-н ҮЙЛ АЖИЛЛАГААНЫ ХӨТӨЛБӨР",
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
            child: Row(
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
          ),
        );
      });
    });
  }

  Widget buildTripCard(BuildContext context, int index) {
    final data = datas[index];


//    currentProgressColor() {
//      if (data.heregjiltiinHuvi >= 90) {
//        return Colors.green;
//      } else{
//        return Colors.red;
//      }
//    }



    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 5.0),
      margin: EdgeInsets.only(bottom: 0.0),
      child: Card(
        elevation: 2.0,
        child: Container(
          padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
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

                      Expanded(
                          flex: 2,
                          child: Container(
//                              decoration: BoxDecoration(
//                                color: Colors.grey,
//                                borderRadius: BorderRadius.only(
//                                    topLeft: Radius.circular(6),
//                                    topRight: Radius.circular(6),
//                                    bottomLeft: Radius.circular(6),
//                                    bottomRight: Radius.circular(6)
//                                ),
//                              ),
                              child: Image.asset(data.image, width: 80, fit: BoxFit.cover)
                          )
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        flex: 4,
                        child: Container(height: 85, child: Text(data.shortDesc, style: TextStyle(color: textColor, fontWeight: FontWeight.w500, fontSize: 12),)),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                        flex: 2,
                        child: CircularPercentIndicator(
                          radius: 55.0,
                          animationDuration: 1500,
                          lineWidth: 4.0,
                          animation: true,
                          percent: data.huvi != null ? int.parse(data.huvi) / 100 : 0,
                          center: Text(
                            '${data.huvi}%',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF00E676)),
                          ),
                          footer: Text(
                            'Биелсэн',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF00E676)),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
//                            progressColor: currentProgressColor(),

                          progressColor: Color(0xFF00E676),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 2, child: Text('Хэрэгжих хугацаа:', style: TextStyle(color: textColor, fontSize: 12),)),
                      SizedBox(width: 4.0),
                      Expanded(flex: 4, child: Text(data.heregjihHugatsaa, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12))),
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 2, child: Text('Эх үүсвэр:', style: TextStyle(color: textColor, fontSize: 12),)),
                      SizedBox(width: 4.0),
                      Expanded(flex: 4, child: Text(data.ehVvsver, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12))),
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 2, child: Text('Нийт төсөв, сая.төг:', style: TextStyle(color: textColor, fontSize: 12),)),
                      SizedBox(width: 4.0),
                      Expanded(flex: 4, child: Text(data.tusuv, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12))),
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 2, child: Text('Суурь түвшин:', style: TextStyle(color: textColor, fontSize: 12),)),
                      SizedBox(width: 4.0),
                      Expanded(flex: 4, child: Text(data.suuriTvwshin, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12))),
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
                    Text('Хүрэх түвшин', style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w600)),
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
                          Expanded(flex: 2, child: Text('Эх үүсвэр:', style: TextStyle(color: textColor, fontSize: 12),)),
                          Expanded(flex: 4, child: Text(data.ehVvsver, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 2, child: Text('Нийт төсөв, сая.төг:', style: TextStyle(color: textColor, fontSize: 12),)),
                          Expanded(flex: 4, child: Text(data.tusuv, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 2, child: Text('Суурь түвшин:', style: TextStyle(color: textColor, fontSize: 12),)),
                          Expanded(flex: 4, child: Text(data.suuriTvwshin, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('Хэрэгжилт', style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(height: 10.0),
                      Text(data.desc, style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w500)),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 2, child: Text('Хэрэгжилтийн хувь:', style: TextStyle(color: textColor, fontSize: 12),)),
                          Expanded(flex: 4, child: Text('${data.huvi}%', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                    ],
                  ),

                  Container(
                    height: 30,
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent[700],
                      borderRadius:
                      new BorderRadius.circular(10.0),
                    ),
                    child: FlatButton(
                      child: Container(
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Center(
                              child: Text(
                                'Биелсэн',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(
                                        255, 255, 255, 1),
                                    fontSize: 16,
                                    fontWeight:
                                    FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {},

                    ),
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







