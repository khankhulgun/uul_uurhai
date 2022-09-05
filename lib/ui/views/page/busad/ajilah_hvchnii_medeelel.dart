import 'package:catalog/ui/common/paginate.dart';
import 'package:catalog/ui/components/header.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:flutter_icons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:lambda/utils/number.dart';
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
import 'package:catalog/ui/common/new_paginate.dart';

//GRAPHQL
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/busad.dart';



import '../../main.dart';
import 'search_busad.dart';

class zarlaga{
  final String AAN;
  final String chiglel;
  final String medeelel;
  final String country;
  final String ajillahHvchniiToo;
  zarlaga(
      this.AAN,
      this.chiglel,
      this.medeelel,
      this.country,
      this.ajillahHvchniiToo,
      );
}

class dValues {
  final int id;
  final String title;
  dValues(
      this.id,
      this.title,
      );
}

class AjillahHvch extends StatefulWidget {
  @override
  _AjillahHvchState createState() => _AjillahHvchState();

}
class _AjillahHvchState extends State<AjillahHvch> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();

  TextEditingController companyname = TextEditingController();
  /*--------------------------------------------------------------------------------------------------*/
  /*--------------------------------------------------------------------------------------------------*/
  int selectedId = 1;
  int selectedYear;
  int countryId;
  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;


  bool _isVisible = false;

  List<AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel> aj_huch_med = [];

  List<LutUls$Query$LutUls> lut_uls = [];
  List<LutJil$Query$LutJil> lut_jil = [];



  @override
  void initState() {
    super.initState();
    this.getData(1);
    getFilterDatas();
  }
  // @override
  // void dispose() {
  //   companyname.dispose();
  //   super.dispose();
  // }

  void getFilterDatas() async {
    final response = await client.execute(LutUlsQuery());
    setState(() {
      lut_uls = response.data.lutUls;
    });
    final response1 = await client.execute(LutJilQuery());
    setState(() {
      lut_jil = response1.data.lutJil;
    });
  }

  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(AjilahHuchMedeelelQuery(variables: AjilahHuchMedeelelArguments(page: page, size: 10, uls_id: countryId != null ? countryId.toString() : "", aanName: companyname.text != '' ? companyname.text : '', jil_id: selectedYear != null ? selectedYear.toString() : "",)));
    setState(() {
      aj_huch_med = response.data.paginate.dsAjilahHuchMedeelel;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;
      print('-------aj_huch_med_all--------');
      print(aj_huch_med);
    });
  }

  final List<dValues> _dropdownValues = [
    dValues(1, "ТЭЗҮ"),
    dValues(2, "НӨӨЦ"),
  ];

  /*--------------------------------------------------------------------------------------------------*/
  /*--------------------------------------------------------------------------------------------------*/

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
          title: "Ажиллах хүчний мэдээлэл".toUpperCase(),
          scaffold: _scaffoldKey,
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => _onButtonPressed(),
      //   child: Icon(Feather.getIconData('search')),
      //   backgroundColor: mainColor,
      // ),
        body: loading ? Loader() : Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(0.0),
          child: Column(
            children: [
              Expanded(
                flex: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                            child: DropdownButtonHideUnderline(
                              child: Container(
                                height: 36,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(horizontal: 6),
                                margin: EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color.fromRGBO(223, 223, 223, 1), width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                ),
                                child: DropdownButton(
                                    items: lut_uls.map((row) => DropdownMenuItem(
                                        child: Text(row.uls),
                                        value: row.id
                                    )).toList(),
                                    // onChanged: (value) {
                                    //   getFilter(value);
                                    // },
                                    onChanged: (newVal) {
                                      setState(() {
                                        countryId = newVal;
                                      });
                                    },
                                    value: countryId,
                                    isExpanded: false,
                                    style: TextStyle(fontSize: 12, color: Colors.black),
                                    hint: Text('Улс сонгох',)
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: 36,
                              child: TextFormField(
                                controller: companyname,
                                style: TextStyle(color: Colors.black54, fontSize: 13, fontWeight: FontWeight.w400),
                                cursorColor: Colors.black87,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                                  hintText: 'Аан нэрээр хайх',
                                  // labelStyle: TextStyle(color: dehubTitleColor),
                                  hintStyle: TextStyle(color: Colors.black54, fontSize: 13, fontWeight: FontWeight.w400),
                                  errorStyle: TextStyle(height: 0),
                                  border: new OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color.fromRGBO(223, 223, 223, 1), width: 1.0),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  enabledBorder: new OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color.fromRGBO(223, 223, 223, 1), width: 1.0),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color.fromRGBO(68, 86, 108, 0.3), width: 1.0),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Color.fromRGBO(223, 223, 223, 1), width: 1.0),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'company ne oruulna uu';
                                  }
                                  return null;
                                },
                                onSaved: (val) => companyname.text = val ?? "",

                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                            child: DropdownButtonHideUnderline(
                              child: Container(
                                height: 36,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(horizontal: 6),
                                margin: EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color.fromRGBO(223, 223, 223, 1), width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                ),
                                child: DropdownButton(
                                    items: lut_jil.map((row) => DropdownMenuItem(
                                        child: Text(row.jil, overflow: TextOverflow.ellipsis,),
                                        value: row.id
                                    )).toList(),
                                    onChanged: (newVal) {
                                      setState(() {
                                        selectedYear = newVal;
                                      });
                                    },
                                    value: selectedYear,
                                    isExpanded: false,
                                    style: TextStyle(fontSize: 12, color: Colors.black),
                                    hint: Text('Жил сонгох')
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: 36,
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: IconButton(
                                padding: EdgeInsets.all(0),
                                icon: Icon(Icons.search,  color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    this.getData(1);
                                    countryId = null;
                                    selectedYear = null;
                                    companyname.text = "";
                                  });
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ),
              ),
              Expanded(
                  flex: 4,
                  child: aj_huch_med.length > 0 ? Pagination(
                    lastPage: lastPage,
                    currentPage: currentPage,
                    total: total,
                    loading: loading,
                    getData: getData,
                    itemBuilder:  ListView.builder(
                      itemCount: aj_huch_med == null ? 0 : aj_huch_med.length,
                      itemBuilder: (BuildContext context, int index) =>
                          buildTripCard(context, index),
                    ),
                  ) : Container(
                    height: double.infinity,
                    alignment: Alignment.center,
                    child: Text('Мэдээлэл олдсонгүй...'),
                  )
              )
            ],
          )
        )

    );

  }

  // void getFilter (newVal){
  //   setState(() {
  //     selectedId = newVal;
  //     print("--------------selectedId--------------");
  //     print(selectedId);
  //   });
  // }

//   void _onButtonPressed() {
//     showModalBottomSheet(
//         context: context, builder: (context,) {
//       return StatefulBuilder(builder:
//           (BuildContext context, StateSetter setStateOfBottomSheet) {
//         return SingleChildScrollView(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//               child: Column(
//                 children: <Widget>[
//                   // Row(
//                   //   mainAxisAlignment: MainAxisAlignment.start,
//                   //   crossAxisAlignment: CrossAxisAlignment.start,
//                   //   children: <Widget>[
//                   //     Column(
//                   //       mainAxisAlignment: MainAxisAlignment.start,
//                   //       crossAxisAlignment: CrossAxisAlignment.start,
//                   //       children: <Widget>[
//                   //         FlatButton(
//                   //           onPressed: () {
//                   //             Navigator.pushNamed(context, '/tusgai');
//                   //           },
//                   //           child: Text('- Тусгай зөвшөөрөл '),
//                   //         ),
//                   //         FlatButton(
//                   //           onPressed: () {
//                   //             Navigator.pushNamed(context, '/songonShalgaruulaltgon');
//                   //           },
//                   //           child: Text('- Сонгон шалгаруулалт'),
//                   //         ),
//                   //         FlatButton(
//                   //           onPressed: () {
//                   //             Navigator.pushNamed(context, '/ebmz');
//                   //           },
//                   //           child: Text('- Эрдэс баялаг мэргэжлийн зөвлөл'),
//                   //         ),
//                   //         FlatButton(
//                   //           onPressed: () {
//                   //             Navigator.pushNamed(context, '/ajillahHvch');
//                   //           },
//                   //           child: Text('- Ажиллах хүчний мэдээлэл'),
//                   //         ),
//                   //       ],
//                   //     ),
//                   //   ],
//                   // ),
//                   SizedBox(height: 10),
//                   DropdownButtonHideUnderline(
//                     child: Container(
//                       height: 36,
//                       width: MediaQuery.of(context).size.width,
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       margin: EdgeInsets.only(bottom: 20),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color.fromRGBO(223, 223, 223, 1), width: 1),
//                         borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                       ),
//                       child: DropdownButton(
//                           items: _dropdownValues.map((row) => DropdownMenuItem(
//                             child: Text(row.title),
//                             value: row.id,
//                           )).toList(),
//                           onChanged: (newVal) {
//                             getFilter(newVal);
//                           },
//                           value: selectedId,
//                           isExpanded: false,
//                           style: TextStyle(fontSize: 12, color: Colors.black),
//                           hint: Text(
//                             'Жил сонгох',
//                           )
//                       ),
//                     ),
//                   ),
//                   DropdownButtonHideUnderline(
//                     child: Container(
//                       height: 36,
//                       width: MediaQuery.of(context).size.width,
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       margin: EdgeInsets.only(bottom: 20),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color.fromRGBO(223, 223, 223, 1), width: 1),
//                         borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                       ),
//                       child: DropdownButton(
//                           items: _dropdownValues.map((row) => DropdownMenuItem(
//                             child: Text(row.title),
//                             value: row.id,
//                           )).toList(),
//                           onChanged: (newVal) {
//                             getFilter(newVal);
//                           },
//                           value: selectedId,
//                           isExpanded: false,
//                           style: TextStyle(fontSize: 12, color: Colors.black),
//                           hint: Text(
//                             'Хурлын дугаар сонгох',
//                           )
//                       ),
//                     ),
//                   ),
//                   DropdownButtonHideUnderline(
//                     child: Container(
//                       height: 36,
//                       width: MediaQuery.of(context).size.width,
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       margin: EdgeInsets.only(bottom: 20),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color.fromRGBO(223, 223, 223, 1), width: 1),
//                         borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                       ),
//                       child: DropdownButton(
//                           items: _dropdownValues.map((row) => DropdownMenuItem(
//                             child: Text(row.title),
//                             value: row.id,
//                           )).toList(),
//                           onChanged: (newVal) {
//                             getFilter(newVal);
//                           },
//                           value: selectedId,
//                           isExpanded: false,
//                           style: TextStyle(fontSize: 12, color: Colors.black),
//                           hint: Text(
//                             'Төрөл сонгох',
//                           )
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: MediaQuery.of(context).size.width,
//                     margin: EdgeInsets.only(bottom: 10),
//                     child: MaterialButton(
//                       height: 40.0,
//                       padding: EdgeInsets.all(0.0),
//                       color: mainColor,
//                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//                       textColor: Colors.white,
//                       child: new Text("Хайх", style: TextStyle(fontSize: 15),),
//                       onPressed: () {
// //                      setStateOfBottomSheet(() {
// //                        this.saveData(true);
// //                      });
//                       },
//                     ),
//                   )
//                 ],
//               ),
//
//             )
//         );
//       });
//     });
//   }

  Widget buildTripCard(BuildContext context, int index) {
    //final zarlaga = zarlaguud[index];
    final aj_huch_med_i = aj_huch_med[index];

    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(right: 10.0, left: 10.0),
      padding: const EdgeInsets.only(top: 15.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey[300]),
//              bottom: BorderSide(width: 1.0, color: Colors.grey[300]),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(flex: 3, child: Text('Аж ахуй нэгж:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 4, child: Text(aj_huch_med_i.ajAhuiNerId, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(flex: 3, child: Text('Үйл ажиллагааны чиглэл:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 4, child: Text(aj_huch_med_i.chiglel, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(flex: 3, child: Text('Мэдээлэл:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 4, child: Text(aj_huch_med_i.medeelel, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),),),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(flex: 3, child: Text('Ажиллах хүч авах улс:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 4, child: Text(aj_huch_med_i.uls, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(flex: 3, child: Text('Ажиллах хүчний тоо:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 4, child: Text(number(aj_huch_med_i.huchToo), style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(flex: 3, child: Text('Он:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 4, child: Text(aj_huch_med_i.jil, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 15),
            ],
          ),


        ],
      ),

    );
  }
}







