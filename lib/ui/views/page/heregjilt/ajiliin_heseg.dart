import 'package:catalog/ui/components/header.dart';
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


import '../../main.dart';

class data{
  final String title;
  final String ajiliinHeseg;
  final String on;
  final String bodlogiinGazar;
  final String dugaar;
  final String desc;
  final String ywtsiinOgnoo;
  final String huvi;
  data(
      this.title,
      this.ajiliinHeseg,
      this.on,
      this.bodlogiinGazar,
      this.dugaar,
      this.desc,
      this.ywtsiinOgnoo,
      this.huvi,
      );
}

class Ajiliin_heseg extends StatefulWidget {
  @override
  _Ajiliin_hesegState createState() => _Ajiliin_hesegState();
}
class _Ajiliin_hesegState extends State<Ajiliin_heseg> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();
  bool loading = true;

  @override
  void initState() {
    super.initState();
  }
  final List<data> datas = [
    data(
      "Үйлдвэрлэл технологийн паркийн барилгын ажлыг хүлээн авах",
      "Сайдын тушаалаар",
      "2020",
      "ГБ, УУ",
      "А/163",
      "БНХАУ-ын тал нүүрс тээврийн жолоочдыг хил нэвтрэх үед ковид-19-ийн шинжилгээнд хамрагдсан байхыг шаардсан. Энэ хүрээнд шуурхай ажлын хэсэг болон эмч, эмнэлгийн ажилчид хилийн бүсэд ажиллаж эхний ээлжинд 854 жолоочийг шинжилгээнд хамруулж хилээр нэвтрэх боломжийг бүрдүүллээ. 11 дүгээр сарын 23-ны байдлаар Гашуунсухайт боомтоор 211 нүүрс тээврийн, 95 зэсийн баяжмалын тээвэр, Шивээхүрэн боомтоор 216 нүүрсний тээврийн хэрэгсэл хилээр нэвтэрчээ. Цаашид 5000 орчим жолоочийг шинжилгээнд бүрэн хамруулахаар ажиллаж байна.",
      "2020-12-12",
      "96"
    ),
    data(
      "Үйлдвэрлэл технологийн паркийн барилгын ажлыг хүлээн авах",
      "Сайдын тушаалаар",
      "2020",
      "ГБ, УУ",
      "А/163",
      "БНХАУ-ын тал нүүрс тээврийн жолоочдыг хил нэвтрэх үед ковид-19-ийн шинжилгээнд хамрагдсан байхыг шаардсан. Энэ хүрээнд шуурхай ажлын хэсэг болон эмч, эмнэлгийн ажилчид хилийн бүсэд ажиллаж эхний ээлжинд 854 жолоочийг шинжилгээнд хамруулж хилээр нэвтрэх боломжийг бүрдүүллээ. 11 дүгээр сарын 23-ны байдлаар Гашуунсухайт боомтоор 211 нүүрс тээврийн, 95 зэсийн баяжмалын тээвэр, Шивээхүрэн боомтоор 216 нүүрсний тээврийн хэрэгсэл хилээр нэвтэрчээ. Цаашид 5000 орчим жолоочийг шинжилгээнд бүрэн хамруулахаар ажиллаж байна.",
      "2020-12-12",
        "96"
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
          title: "ХЭРЭГЖИЛТ ГҮЙЦЭТГЭЛ / Ажлын хэсэг",
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
                children: <Widget>[
                  Text(data.title, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 14),),
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
                                        Expanded(flex: 3, child: Text('Ажлын хэсэг:', style: TextStyle(color: textColor, fontSize: 12),)),
                                        Expanded(flex: 4, child: Text(data.ajiliinHeseg, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(flex: 3, child: Text('Он:', style: TextStyle(color: textColor, fontSize: 12),)),
                                        Expanded(flex: 4, child: Text(data.on, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(flex: 3, child: Text('Бодлогын газар:', style: TextStyle(color: textColor, fontSize: 12),)),
                                        Expanded(flex: 4, child: Text(data.bodlogiinGazar, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                      ],
                                    ),
                                    SizedBox(height: 4),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Expanded(flex: 3, child: Text('Тушаалын дугаар:', style: TextStyle(color: textColor, fontSize: 12),)),
                                        Expanded(flex: 4, child: Text(data.dugaar, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
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
                                  progressColor: Color(0xFF00E676),
                              ),
                              ),

                            ],
                          ),


                        ),
                      ),
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
                    Text('Явцын тайлан', style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w600)),
                  ],
                ),
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(data.desc, style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w500)),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 2, child: Text('Явцын огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
                          Expanded(flex: 4, child: Text(data.ywtsiinOgnoo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 10.0),
                    ],
                  ),
                  Divider(),


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







