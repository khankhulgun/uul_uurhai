import 'package:catalog/ui/components/header.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:flutter_icons/ionicons.dart';
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
import 'package:catalog/graphql/queries/statistic_medee.dart';


import '../../main.dart';

class ex_port{
  final String boomt;
  final String created_at;
  final String turul;
  final String hemjee;
  final String company;
  final String teever;
  final String eh_survalj;

  ex_port(
      this.boomt,
      this.created_at,
      this.turul,
      this.hemjee,
      this.company,
      this.teever,
      this.eh_survalj,
      );
}

class TaamagVne extends StatefulWidget {
  @override
  _TaamagVneState createState() => _TaamagVneState();

}
class _TaamagVneState extends State<TaamagVne> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();



  /*--------------------------------------------------------------------------------------------------*/
  /*--------------------------------------------------------------------------------------------------*/
  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;

  bool _isVisible = false;

//  List<AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel> aj_huch_med = [];
  List<TaamagUne$Query$Paginate$DsTaamagUne> taamag_vne = [];

  @override
  void initState() {
    super.initState();
    getData(1);
  }
  void getData(int page) async {
    setState(() {
      loading = true;
    });
//    final response = await client.execute(AjilahHuchMedeelelQuery(variables: AjilahHuchMedeelelArguments(page: page, size: 10)));
    final response = await client.execute(TaamagUneQuery(variables:  TaamagUneArguments(page: page, size: 10)));
    setState(() {
      taamag_vne = response.data.paginate.dsTaamagUne;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;

      print(taamag_vne);
    });
  }



  /*--------------------------------------------------------------------------------------------------*/
  /*--------------------------------------------------------------------------------------------------*/


  bool _isExpanded = false;

  ///Toogle the box to expand or collapse
  void _toogleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  final List<ex_port> exports = [
    ex_port("Өмнөговь", "2020-01-19",  "Нүүрс",  "5,799",  "Тийсс ХХК",  "Авто тээвэр", "Тийсс ХХК"),
    ex_port("Өмнөговь", "2020-01-19",  "Нүүрс",  "5,799",  "Тийсс ХХК",  "Авто тээвэр", "Тийсс ХХК"),
    ex_port("Өмнөговь", "2020-01-19",  "Нүүрс",  "5,799",  "Тийсс ХХК",  "Авто тээвэр", "Тийсс ХХК"),
    ex_port("Өмнөговь", "2020-01-19",  "Нүүрс",  "5,799",  "Тийсс ХХК",  "Авто тээвэр", "Тийсс ХХК"),
    ex_port("Өмнөговь", "2020-01-19",  "Нүүрс",  "5,799",  "Тийсс ХХК",  "Авто тээвэр", "Тийсс ХХК"),
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
          title: "СТАТИСТИК / Таамаг үнэ",
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
        child: loading ? Loader() : Pagination(
          lastPage: lastPage,
          currentPage: currentPage,
          total: total,
          loading: loading,
          getData: getData,
          itemBuilder:  ListView.builder(
            itemCount: taamag_vne == null ? 0 : taamag_vne.length,
            itemBuilder: (BuildContext context, int index) =>
                buildTripCard(context, index),
          ),
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
                          child: Text('- Экспортын мэдээ'),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Олборлолтын мэдээ'),
                        ),
                        FlatButton(
//                      onPressed: () => _onButtonDeDtses(),
                          onPressed: (){},
                          child: Text('- Монгол банкны худалдан авалт'),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Таамаг үнэ'),
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
    final taamag_vne_i = taamag_vne[index];
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
        elevation: 0.0,
        margin: EdgeInsets.all(0.0),
        child: Container(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey[300]),
//              bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(flex: 1, child: Text('', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 2, child: Text('', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                  Expanded(flex: 4, child: Text(date(taamag_vne_i.ognoo), style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                  Expanded(flex: 2, child: Text('', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(flex: 1, child: Text('', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 2, child: Text('', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                  Expanded(flex: 4, child: Text('Бүтээгдэхүүн:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 2,child: Text(taamag_vne_i.ashigtMaltmal, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(flex: 1, child: Text('', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 2, child: Text('', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                  Expanded(flex: 4, child: Text('Олборлолтын хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 2, child: Text('${taamag_vne_i.hNegjId}', style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(flex: 1, child: Text('', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 2, child: Text('', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                  Expanded(flex: 4, child: Text('Олборлогч байгууллага:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 2, child: Text('', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(flex: 1, child: Text('', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 2, child: Text('', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                  Expanded(flex: 4, child: Text('Тээврийн хэрэгсэл:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 2, child: Text('авто тээвэр', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(flex: 1, child: Text('Боомт:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 2, child: Text('', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                  Expanded(flex: 4, child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text('Эх сурвалж:', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 12),),
                  )),
                  Expanded(flex: 2, child: Text(taamag_vne_i.survalj, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}







