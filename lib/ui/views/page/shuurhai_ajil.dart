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

import 'package:catalog/utils/date.dart';
import 'package:catalog/ui/common/paginate.dart';


import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/shuurhai_ajil.dart';

import '../../../main.dart';

class data{
  final String image;
  final String ognoo;
  final String shortDesc;
  final String heregjvvlegch;
  final String hugatsaa;
  final String desc;
  final String heregjvvlsenOgnoo;
  final String heregjiltiinHuvi;
  data(
      this.image,
      this.ognoo,
      this.shortDesc,
      this.heregjvvlegch,
      this.hugatsaa,
      this.desc,
      this.heregjvvlsenOgnoo,
      this.heregjiltiinHuvi,
      );
}

class ShuurhaiAjil extends StatefulWidget {
  //final ProjectInfo project;

  //const ShuurhaiAjil({Key key, this.project}) : super(key: key);

  @override
  _ShuurhaiAjilState createState() => _ShuurhaiAjilState();
}
class _ShuurhaiAjilState extends State<ShuurhaiAjil> {
  //List<Project> projects = [];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();

  List<PaginateShuurhaiajil$Query$Paginate$DsShuurkhaiAjil> shuurhais = [];

  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;

  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  void initState() {
    super.initState();

    getData(1);
  }

  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(PaginateShuurhaiajilQuery(variables: PaginateShuurhaiajilArguments(page: page, size: 4)));



    setState(() {
      shuurhais = response.data.paginate.dsShuurkhaiAjil;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;
      print("-----------");
      print(shuurhais);
    });

  }


  final List<data> datas = [
    data(
      "assets/uuhvy_img/to.png",
      "2020-11-24",
      "Энэ хүрээнд шуурхай ажлын хэсэг болон эмч, эмнэлгийн ажилчид хилийн бүсэд ажиллаж эхний ээлжинд 854 жолоочийг шинжилгээнд хамруулж.... ",
      "ГБГ",
      "2020-12-01",
      "БНХАУ-ын тал нүүрс тээврийн жолоочдыг хил нэвтрэх үед ковид-19-ийн шинжилгээнд хамрагдсан байхыг шаардсан. Энэ хүрээнд шуурхай ажлын хэсэг болон эмч, эмнэлгийн ажилчид хилийн бүсэд ажиллаж эхний ээлжинд 854 жолоочийг шинжилгээнд хамруулж хилээр нэвтрэх боломжийг бүрдүүллээ. 11 дүгээр сарын 23-ны байдлаар Гашуунсухайт боомтоор 211 нүүрс тээврийн, ",
      "2020-12-12",
      "96",
    ),
    data(
      "assets/uuhvy_img/yamnii.png",
      "2020-11-24",
      "Энэ хүрээнд шуурхай ажлын хэсэг болон эмч, эмнэлгийн ажилчид хилийн бүсэд ажиллаж эхний ээлжинд 854 жолоочийг шинжилгээнд хамруулж.... ",
      "ГБГ",
      "2020-12-01",
      "БНХАУ-ын тал нүүрс тээврийн жолоочдыг хил нэвтрэх үед ковид-19-ийн шинжилгээнд хамрагдсан байхыг шаардсан. Энэ хүрээнд шуурхай ажлын хэсэг болон эмч, эмнэлгийн ажилчид хилийн бүсэд ажиллаж эхний ээлжинд 854 жолоочийг шинжилгээнд хамруулж хилээр нэвтрэх боломжийг бүрдүүллээ. 11 дүгээр сарын 23-ны байдлаар Гашуунсухайт боомтоор 211 нүүрс тээврийн, ",
      "2020-12-12",
      "82",
    ),
    data(
      "assets/uuhvy_img/to.png",
      "2020-11-24",
      "Энэ хүрээнд шуурхай ажлын хэсэг болон эмч, эмнэлгийн ажилчид хилийн бүсэд ажиллаж эхний ээлжинд 854 жолоочийг шинжилгээнд хамруулж.... ",
      "ГБГ",
      "2020-12-01",
      "БНХАУ-ын тал нүүрс тээврийн жолоочдыг хил нэвтрэх үед ковид-19-ийн шинжилгээнд хамрагдсан байхыг шаардсан. Энэ хүрээнд шуурхай ажлын хэсэг болон эмч, эмнэлгийн ажилчид хилийн бүсэд ажиллаж эхний ээлжинд 854 жолоочийг шинжилгээнд хамруулж хилээр нэвтрэх боломжийг бүрдүүллээ. 11 дүгээр сарын 23-ны байдлаар Гашуунсухайт боомтоор 211 нүүрс тээврийн, ",
      "2020-12-12",
      "75",
    ),
    data(
      "assets/uuhvy_img/yamnii.png",
      "2020-11-24",
      "Энэ хүрээнд шуурхай ажлын хэсэг болон эмч, эмнэлгийн ажилчид хилийн бүсэд ажиллаж эхний ээлжинд 854 жолоочийг шинжилгээнд хамруулж.... ",
      "ГБГ",
      "2020-12-01",
      "БНХАУ-ын тал нүүрс тээврийн жолоочдыг хил нэвтрэх үед ковид-19-ийн шинжилгээнд хамрагдсан байхыг шаардсан. Энэ хүрээнд шуурхай ажлын хэсэг болон эмч, эмнэлгийн ажилчид хилийн бүсэд ажиллаж эхний ээлжинд 854 жолоочийг шинжилгээнд хамруулж хилээр нэвтрэх боломжийг бүрдүүллээ. 11 дүгээр сарын 23-ны байдлаар Гашуунсухайт боомтоор 211 нүүрс тээврийн, ",
      "2020-12-12",
      "50",
    ),
  ];



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
          title: "ШУУРХАЙ АЖИЛ",
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
          itemCount: shuurhais == null ? 0 : shuurhais.length,
          itemBuilder: (BuildContext context, int index) =>
              buildTripCard(context, index),
        ),
      ),
    );

  }

  void _onButtonDeDtses() {
    showModalBottomSheet(
        context: context, builder: (context,) {
      return StatefulBuilder(builder:
          (BuildContext context, StateSetter setStateOfBottomSheet) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Row(
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
          ),
        );
      });
    });
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
                            child: Image.asset(data.image, height: 90,  fit: BoxFit.cover)
                        )
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(data.ognoo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),),
                            Container(height: 70, child: Text(data.shortDesc, style: TextStyle(color: textColor, fontWeight: FontWeight.w500, fontSize: 12),)),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                          flex: 2,
                          child: CircularPercentIndicator(
                            radius: 55.0,
                            animationDuration: 1500,
                            lineWidth: 4.0,
                            animation: true,
                            percent: data.heregjiltiinHuvi != null ? int.parse(data.heregjiltiinHuvi) / 100 : 0,
                            center: Text(
                              '${data.heregjiltiinHuvi}%',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.greenAccent[700],),
                            ),
                            footer: Text(
                              'Биелсэн',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.greenAccent[700],),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
//                            progressColor: currentProgressColor(),

                            progressColor: Colors.greenAccent[700],
                          ),
                      ),

                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          flex: 6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Хэрэгжүүлэгч:', style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(width: 4.0),
                              Text(data.heregjvvlegch, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12)),
                            ],
                          )
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Хугацаа:', style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(width: 4.0),
                              Text(data.hugatsaa, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12)),
                            ],
                          )
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
                    Text('Хэрэгжилт', style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w600)),
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
                          Expanded(flex: 2, child: Text('Хэрэгжүүлсэн огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
                          Expanded(flex: 4, child: Text(data.heregjvvlsenOgnoo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(flex: 2, child: Text('Хэрэгжилтийн хувь:', style: TextStyle(color: textColor, fontSize: 12),)),
                          Expanded(flex: 4, child: Text('${data.heregjiltiinHuvi}%', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                        ],
                      ),
                      SizedBox(height: 10.0),
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







