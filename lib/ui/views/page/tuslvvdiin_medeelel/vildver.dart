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
                          child: Text('- Олборлолт явуулж байгаа уурхай'),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Үйлдвэр'),
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
                      Expanded(flex: 2, child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: SvgPicture.asset('assets/uuhvy_img/vildver.svg', height: 90,  fit: BoxFit.cover)
                      )),
                      Expanded(flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(uurhai.uildverNer.toLowerCase(), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 14),),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('Аж ахуй нэгж:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('Тусгай зөвшөөрөл:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
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
                                  Expanded(flex: 4, child: Text('Үйлдвэрлэлийн чиглэл:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
//
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(flex: 4, child: Text('Сум / Дүүрэг:', style: TextStyle(color: textColor, fontSize: 12),)),
                            Expanded(flex: 4, child: Text(uurhai.sumname, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                          ],
                        ),
                      ),
                      Expanded(flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(flex: 4, child: Text('Баг / Хороо:', style: TextStyle(color: textColor, fontSize: 12),)),
                            Expanded(flex: 4, child: Text(uurhai.bagname, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                          ],
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
                      Text('Үйлдвэрлэл', style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w600)),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Нүүрс', style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                  Expanded(flex: 5, child: Text('Олборлолт эхэлсэн огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 3, child: Text(vildvers[index].dsSubUildverlel[index].uEhelsen, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                  Expanded(flex: 5, child: Text('ТЭЗҮ батлагдсан огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 3, child: Text(vildvers[index].dsSubUildverlel[index].tezu, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                  Expanded(flex: 5, child: Text('Батлагдсан нөөц:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 3, child: Text('${vildvers[index].dsSubUildverlel[index].bNoots}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                  Expanded(flex: 5, child: Text('Хүчин чадал:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 3, child: Text('${vildvers[index].dsSubUildverlel[index].bHuchinChadal}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                  Expanded(flex: 5, child: Text('Ажилчдын тоо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 3, child: Text('${vildvers[index].dsSubUildverlel[index].ajilchinToo}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10.0),
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







