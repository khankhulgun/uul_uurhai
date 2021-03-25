import 'package:catalog/ui/components/header.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:flutter_icons/ionicons.dart';
import 'package:lambda/modules/network_util.dart';
import '../../components/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:lambda/plugins/data_form/loader.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:vector_math/vector_math_64.dart' as math;

import '../main.dart';

class medee {
  final String title;
  final String desc;
  final String created_at;

  medee(
    this.title,
    this.desc,
    this.created_at,
  );
}
class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();

}
class _NewsState extends State<News> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();
  bool loading = true;


  bool _isExpanded = false;

  ///Toogle the box to expand or collapse
  void _toogleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  void initState() {
    super.initState();
  }
  final List<medee> medeenuud = [
    medee("“КОВИД 19”-ИЙН ХҮНД ҮЕД УУЛ УУРХАЙН САЛБАР ИРГЭДИЙН АМЬЖИРГААНД БОДИТ ДЭМЖЛЭГ ҮЗҮҮЛЛЭЭ",
        "Сайд нарын зүгээс салбарын нэр хүндийг өндөрт өргөж яваа баялаг бүтээгч салбарынхандаа болон дээрх хоёр компанийн удирдлага, ажилтнуудад хандан улс, орон нутгийн төсвийг бүрдүүлэхээс гадна цар тахлын хүнд нөхцөл байдалд байгаа аж ахуйн нэгж, ард иргэдийн нуруун дээрх ачааллыг хөнгөлж, бодит дэмжлэг үзүүлж буйд яам, агентлагийн нийт ажилтан, иргэд, аж ахуйн нэгжийн нэрийн өмнөөс талархал илэрхийлсэн юм.",
        "2020-12-14"
    ),
    medee("“КОВИД 19”-ИЙН ХҮНД ҮЕД УУЛ УУРХАЙН САЛБАР ИРГЭДИЙН АМЬЖИРГААНД БОДИТ ДЭМЖЛЭГ ҮЗҮҮЛЛЭЭ",
        "Сайд нарын зүгээс салбарын нэр хүндийг өндөрт өргөж яваа баялаг бүтээгч салбарынхандаа болон дээрх хоёр компанийн удирдлага, ажилтнуудад хандан улс, орон нутгийн төсвийг бүрдүүлэхээс гадна цар тахлын хүнд нөхцөл байдалд байгаа аж ахуйн нэгж, ард иргэдийн нуруун дээрх ачааллыг хөнгөлж, бодит дэмжлэг үзүүлж буйд яам, агентлагийн нийт ажилтан, иргэд, аж ахуйн нэгжийн нэрийн өмнөөс талархал илэрхийлсэн юм. Сайд нарын зүгээс салбарын нэр хүндийг өндөрт өргөж яваа баялаг бүтээгч салбарынхандаа болон дээрх хоёр компанийн удирдлага, ажилтнуудад хандан улс, орон нутгийн төсвийг бүрдүүлэхээс гадна цар тахлын хүнд нөхцөл байдалд байгаа аж ахуйн нэгж, ард иргэдийн нуруун дээрх ачааллыг хөнгөлж, бодит дэмжлэг үзүүлж буйд яам, агентлагийн нийт ажилтан, иргэд, аж ахуйн нэгжийн нэрийн өмнөөс талархал илэрхийлсэн юм.",
        "2020-12-14"
    ),
    medee("“КОВИД 19”-ИЙН ХҮНД ҮЕД УУЛ УУРХАЙН САЛБАР ИРГЭДИЙН АМЬЖИРГААНД БОДИТ ДЭМЖЛЭГ ҮЗҮҮЛЛЭЭ",
        "Сайд нарын зүгээс салбарын нэр хүндийг өндөрт өргөж яваа баялаг бүтээгч салбарынхандаа болон дээрх хоёр компанийн удирдлага, ажилтнуудад хандан улс, орон нутгийн төсвийг бүрдүүлэхээс гадна цар тахлын хүнд нөхцөл байдалд байгаа аж ахуйн нэгж, ард иргэдийн нуруун дээрх ачааллыг хөнгөлж, бодит дэмжлэг үзүүлж буйд яам, агентлагийн нийт ажилтан, иргэд, аж ахуйн нэгжийн нэрийн өмнөөс талархал илэрхийлсэн юм.",
        "2020-12-14"
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
          title: "МЭДЭЭ, МЭДЭЭЛЭЛ / Цаг үеийн мэдээ",
          scaffold: _scaffoldKey,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onButtonPressed(),
        child: Icon(Feather.getIconData('search')),
        backgroundColor: mainColor,
      ),

//      floatingActionButtonLocation:
//      FloatingActionButtonLocation.centerFloat,
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: ListView.builder(
          itemCount: medeenuud == null ? 0 : medeenuud.length,
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
                      child: Text('- Цаг үеийн мэдээ'),
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
    final medee = medeenuud[index];
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(right: 10.0, bottom: 15.0, left: 10.0),
      padding: const EdgeInsets.only(top: 15.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey[300]),
//              bottom: BorderSide(width: 1.0, color: Colors.grey[300]),
        ),
        color: Colors.white,
      ),
      child: Card(
        elevation: 0.0,
        margin: EdgeInsets.all(0.0),
        child: Container(
          padding: const EdgeInsets.only(left: 0.0),
          margin: EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                medee.title.toUpperCase(),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
              SizedBox(height: 5.0,),
              Html(
                data: medee.desc,
                defaultTextStyle: TextStyle(
                  fontSize: 12,),
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(Icons.today, size: 14, color: mainColor),
                  SizedBox(width: 2.0,),
                  Text(
                    medee.created_at, textAlign: TextAlign.right, style: TextStyle(color: textColor, fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}







