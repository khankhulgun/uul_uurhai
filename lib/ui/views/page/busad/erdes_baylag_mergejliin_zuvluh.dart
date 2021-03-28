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
import 'package:catalog/graphql/queries/busad.dart';

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
                          child: Text('- Тусгай зөвшөөрөл '),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Сонгон шалгаруулалт'),
                        ),
                        FlatButton(
//                      onPressed: () => _onButtonDeDtses(),
                          onPressed: (){},
                          child: Text('- Эрдэс баялаг мэргэжлийн зөвлөл'),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Ажиллах хүчний мэдээлэл'),
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
                      Expanded(flex: 2, child: Container(width: 80.0, child: Image.asset('assets/uuhvy_img/uurkhai.png', height: 100,  fit: BoxFit.cover))),
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
                                  Expanded(flex: 4, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('Он:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
//                 backgroundColor: Colors.grey[50],
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Хэлэлцсэн асуудлууд', style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  children: <Widget>[
                    erdes_baylag_mer_zuv.length <= 0 ? Container() : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: erdes_baylag_mer_zuv[index].dsSubTezu == null ? 0 : erdes_baylag_mer_zuv[index].dsSubTezu.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int index) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubTezu[index].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubTezu[index].buteegdehuun, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubTezu[index].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubTezu[index].tolov, style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                        itemBuilder: (BuildContext context, int index) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubBu[index].asuudalD}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubBu[index].bTorol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubBu[index].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubBu[index].tolov, style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                        itemBuilder: (BuildContext context, int index) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubGt[index].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubGt[index].gtTorol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubGt[index].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubGt[index].tolov, style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 20.0),
                            ],
                          );
                        }
                    ),
                    // SizedBox(height: 10),
                    // erdes_baylag_mer_zuv.length <= 0 ? Container() : ListView.builder(
                    //     shrinkWrap: true,
                    //     physics: ScrollPhysics(),
                    //     itemCount: erdes_baylag_mer_zuv[index].dsSubNoots == null ? 0 : erdes_baylag_mer_zuv[index].dsSubNoots.length,
                    //     padding: EdgeInsets.all(0.0),
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return                     Column(
                    //         mainAxisAlignment: MainAxisAlignment.start,
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: <Widget>[
                    //           Row(
                    //             mainAxisAlignment: MainAxisAlignment.start,
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: <Widget>[
                    //               Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                    //               Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubNoots[index].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                    //             ],
                    //           ),
                    //           SizedBox(height: 4),
                    //           Row(
                    //             mainAxisAlignment: MainAxisAlignment.start,
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: <Widget>[
                    //               Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                    //               Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubNoots[index].buteegdehuun, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                    //             ],
                    //           ),
                    //           SizedBox(height: 10),
                    //           Text(erdes_baylag_mer_zuv[index].dsSubNoots[index].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                    //           SizedBox(height: 10),
                    //           Row(
                    //             mainAxisAlignment: MainAxisAlignment.start,
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: <Widget>[
                    //               Expanded(flex: 0, child: Padding(
                    //                 padding: const EdgeInsets.only(right: 10.0),
                    //                 child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                    //               ),),
                    //               Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubNoots[index].tolov, style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600, fontSize: 12),)),
                    //             ],
                    //           ),
                    //           SizedBox(height: 20.0),
                    //         ],
                    //       );
                    //     }
                    // ),
                    SizedBox(height: 10),
                    erdes_baylag_mer_zuv.length <= 0 ? Container() : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: erdes_baylag_mer_zuv[index].dsSubUhggsa == null ? 0 : erdes_baylag_mer_zuv[index].dsSubUhggsa.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int index) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubUhggsa[index].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubUhggsa[index].torol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubUhggsa[index].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubUhggsa[index].uhggsaTolov, style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600, fontSize: 12),)),
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







