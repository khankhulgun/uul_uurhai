import 'package:catalog/ui/common/paginate.dart';
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
import 'package:catalog/ui/common/new_paginate.dart';

//GRAPHQL
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/busad.dart';

import 'search_busad.dart';

class dValues {
  final int id;
  final String title;
  dValues(
      this.id,
      this.title,
      );
}

class ErdesBaylagMergejliinZuvlul extends StatefulWidget {
  @override
  _ErdesBaylagMergejliinZuvlulState createState() => _ErdesBaylagMergejliinZuvlulState();

}
class _ErdesBaylagMergejliinZuvlulState extends State<ErdesBaylagMergejliinZuvlul> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();

  bool loading = true;
  int selectedId;
  int selectedYear;
  int selectedDugaar;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;

  bool _isVisible = false;
  List<EBMergejilZovlol$Query$Paginate$DsEBMergejilZovlol> erdes_baylag_mer_zuv = [];
  List<EBMergejilZovlolAll$Query$Paginate$DsEBMergejilZovlol> erdes_baylag_mer_zuv_all = [];
  List<LutEbmZovlol$Query$LutEbmZovlol> lut_ebm_zovlol = [];
  List<HuraldaanDugaar$Query$DsViewEBMergejilHuraldaanDugaar> huraldaan_dugaar = [];
  List<LutJil$Query$LutJil> lut_jil = [];

  TextEditingController aanDugaar = TextEditingController();

  final List<dValues> _dropdownValues = [
    dValues(1, "2022"),
    dValues(2, "2021"),
  ];

  @override
  void initState() {
    super.initState();
    this.getData(1);
    getFilterDatas();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void getFilterDatas() async {
    final response = await client.execute(LutEbmZovlolQuery());
    setState(() {
      lut_ebm_zovlol = response.data.lutEbmZovlol;
    });
    final response1 = await client.execute(LutJilQuery());
    setState(() {
      lut_jil = response1.data.lutJil;
    });
    final response2 = await client.execute(HuraldaanDugaarQuery());
    setState(() {
      huraldaan_dugaar = response2.data.dsViewEBMergejilHuraldaanDugaar;
    });
  }

  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(EBMergejilZovlolQuery(variables: EBMergejilZovlolArguments(
        page: page,
        size: 10,
        turul_id:
        selectedId != null ? selectedId.toString() : "",
        jil_id: selectedYear != null ? selectedYear.toString() : "",
        aanDugaar: aanDugaar.text != '' ? aanDugaar.text : '',
        // h_id: selectedDugaar != null ? selectedDugaar.toString() : ""
    )));
    setState(() {
      erdes_baylag_mer_zuv = response.data.paginate.dsEBMergejilZovlol;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;
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
          title: "ЭБМЗ",
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
        //padding: EdgeInsets.only(left: 10.0, right: 10.0),
        height: double.infinity,
        margin: EdgeInsets.all(0.0),
        child: Column(
            children: [
              Expanded(
                flex: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 14),
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
                                    items: lut_ebm_zovlol.map((row) => DropdownMenuItem(
                                        child: Text(row.zovlol),
                                        value: row.id
                                    )).toList(),
                                    // onChanged: (value) {
                                    //   getFilter(value);
                                    // },
                                    onChanged: (newVal) {
                                      setState(() {
                                        selectedId = newVal;
                                      });
                                    },
                                    value: selectedId,
                                    isExpanded: false,
                                    style: TextStyle(fontSize: 12, color: Colors.black),

                                    hint: Text('ЭБМЗ-ын салбар сонгох',)
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
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
                                        //value: row.jil
                                        value: int.parse(row.jil)
                                    )).toList(),
                                    // onChanged: (value) {
                                    //   getFilterYear(value);
                                    // },
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
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: 36,
                              child: TextFormField(
                                controller: aanDugaar,
                                keyboardType: TextInputType.number,
                                style: TextStyle(color: Colors.black54, fontSize: 13, fontWeight: FontWeight.w400),
                                cursorColor: Colors.black87,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                                  hintText: 'Хурлын дугаар',
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
                                onSaved: (val) => aanDugaar.text = val ?? "",

                              ),
                            )
                            // child: DropdownButtonHideUnderline(
                            //   child: Container(
                            //     height: 36,
                            //     width: MediaQuery.of(context).size.width,
                            //     padding: EdgeInsets.symmetric(horizontal: 6),
                            //     margin: EdgeInsets.only(bottom: 5),
                            //     decoration: BoxDecoration(
                            //       border: Border.all(color: Color.fromRGBO(223, 223, 223, 1), width: 1),
                            //       borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            //     ),
                            //     child: DropdownButton(
                            //         items: huraldaan_dugaar.map((row) => DropdownMenuItem(
                            //             child: Text(row.huraldaanDugaar.toString(), overflow: TextOverflow.ellipsis,),
                            //             value: row.huraldaanDugaar
                            //         )).toList(),
                            //         // onChanged: (value) {
                            //         //   getFilterYear(value);
                            //         // },
                            //         onChanged: (newVal) {
                            //           setState(() {
                            //             selectedDugaar = newVal;
                            //           });
                            //         },
                            //         value: selectedDugaar,
                            //         isExpanded: false,
                            //         style: TextStyle(fontSize: 12, color: Colors.black),
                            //         hint: Text('Хурлын дугаар сонгох')
                            //     ),
                            //   ),
                            // ),
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
                                    selectedId = null;
                                    selectedYear = null;
                                    aanDugaar.text = "";
                                    //selectedDugaar = null;
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
                child: erdes_baylag_mer_zuv.length > 0 ? Pagination(
                    lastPage: lastPage,
                    currentPage: currentPage,
                    total: total,
                    loading: loading,
                    getData: getData,
                    itemBuilder: Container(
                        child: ListView.builder(
                          itemCount: erdes_baylag_mer_zuv == null  ? 0 : erdes_baylag_mer_zuv.length,
                          itemBuilder: (BuildContext context, int index) =>
                              buildTripCard(context, index),
                        )
                    )
                )  : Container(
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
  // showModalBottomSheet(
  // context: context, builder: (context,) {
  // return StatefulBuilder(builder:
  // (BuildContext context, StateSetter setStateOfBottomSheet) {


  // void _onButtonPressed(){
  //   showModalBottomSheet(
  //       context: context,
  //       // isScrollControlled: true,
  //       builder: (context) {
  //     return StatefulBuilder(builder: (BuildContext context, StateSetter setStateOfBottomSheet){
  //       return SingleChildScrollView(
  //         child: Container(
  //           padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  //           child: Column(
  //             children: <Widget>[
  //               SizedBox(height: 10),
  //               DropdownButtonHideUnderline(
  //                 child: Container(
  //                   height: 36,
  //                   width: MediaQuery.of(context).size.width,
  //                   padding: EdgeInsets.symmetric(horizontal: 10),
  //                   margin: EdgeInsets.only(bottom: 20),
  //                   decoration: BoxDecoration(
  //                     border: Border.all(color: Color.fromRGBO(223, 223, 223, 1), width: 1),
  //                     borderRadius: BorderRadius.all(Radius.circular(5.0)),
  //                   ),
  //                   child: DropdownButton(
  //                       items: lut_ebm_zovlol.map((row) => DropdownMenuItem(
  //                         child: Text(row.zovlol),
  //                         value: row.id
  //                       )).toList(),
  //                       onChanged: (newVal) {
  //                           setStateOfBottomSheet(() {
  //                             selectedId = newVal;
  //                           });
  //                         // setState((){
  //                         //   selectedId = newVal;
  //                         //   print("--------------selectedId--------------");
  //                         //   print(selectedId);
  //                         // });
  //                       },
  //                       value: selectedId,
  //                       isExpanded: false,
  //                       style: TextStyle(fontSize: 12, color: Colors.black),
  //                       hint: Text(
  //                         'ЭБМЗ-ын салбар сонгох',
  //                       )
  //                   ),
  //                 ),
  //               ),
  //               DropdownButtonHideUnderline(
  //                 child: Container(
  //                   height: 36,
  //                   width: MediaQuery.of(context).size.width,
  //                   padding: EdgeInsets.symmetric(horizontal: 10),
  //                   margin: EdgeInsets.only(bottom: 20),
  //                   decoration: BoxDecoration(
  //                     border: Border.all(color: Color.fromRGBO(223, 223, 223, 1), width: 1),
  //                     borderRadius: BorderRadius.all(Radius.circular(5.0)),
  //                   ),
  //                   child: DropdownButton(
  //                       items: lut_jil.map((row) => DropdownMenuItem(
  //                         child: Text(row.jil),
  //                         value: int.parse(row.jil)
  //                       )).toList(),
  //                       onChanged: (newVal) {
  //                         setStateOfBottomSheet(() {
  //                           selectedYear = newVal;
  //                         });
  //                         // setState((){
  //                         //   selectedYear = newVal;
  //                         // });
  //                       },
  //                       value: selectedYear,
  //                       isExpanded: false,
  //                       style: TextStyle(fontSize: 12, color: Colors.black),
  //                       hint: Text(
  //                         'Жил сонгох',
  //                       )
  //                   ),
  //                 ),
  //               ),
  //               // DropdownButtonHideUnderline(
  //               //   child: Container(
  //               //     height: 36,
  //               //     width: MediaQuery.of(context).size.width,
  //               //     padding: EdgeInsets.symmetric(horizontal: 10),
  //               //     margin: EdgeInsets.only(bottom: 20),
  //               //     decoration: BoxDecoration(
  //               //       border: Border.all(color: Color.fromRGBO(223, 223, 223, 1), width: 1),
  //               //       borderRadius: BorderRadius.all(Radius.circular(5.0)),
  //               //     ),
  //               //     child: DropdownButton(
  //               //         items: _dropdownValues.map((row) => DropdownMenuItem(
  //               //           child: Text(row.title),
  //               //           value: row.id,
  //               //         )).toList(),
  //               //         onChanged: (newVal) {
  //               //           setState((){
  //               //             selectedId = newVal;
  //               //           });
  //               //         },
  //               //         value: selectedId,
  //               //         isExpanded: false,
  //               //         style: TextStyle(fontSize: 12, color: Colors.black),
  //               //         hint: Text(
  //               //           'Хурлын дугаар сонгох',
  //               //         )
  //               //     ),
  //               //   ),
  //               // ),
  //               Container(
  //                 width: MediaQuery.of(context).size.width,
  //                 margin: EdgeInsets.only(bottom: 10),
  //                 child: MaterialButton(
  //                   height: 40.0,
  //                   padding: EdgeInsets.all(0.0),
  //                   color: mainColor,
  //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  //                   textColor: Colors.white,
  //                   child: new Text("Хайх", style: TextStyle(fontSize: 15),),
  //                   onPressed: () {
  //                    setStateOfBottomSheet(() {
  //                      //this.getData(true, 1);
  //                    });
  //                   },
  //                 ),
  //               )
  //             ],
  //           ),
  //         )
  //       );
  //     });
  //   });
  // }




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
                      Expanded(flex: 2,
                          child: SvgPicture.asset('assets/uuhvy_img/new_mzuvlul.svg', height: 100,  fit: BoxFit.cover)
                      ),
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
                                  Expanded(flex: 4, child: Text(tusgai.zovlol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('Он:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text('${tusgai.jilId}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('Хурлын дугаар:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text('${tusgai.huraldaanDugaar}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                      Text('Хэлэлцсэн асуудлууд', style: TextStyle(fontSize: 12, fontFamily: "Roboto-Condensed", color: textColor, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  children: <Widget>[
                    erdes_baylag_mer_zuv.length <= 0 ? Container() : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: erdes_baylag_mer_zuv[index].dsSubTezu == null ? 0 : erdes_baylag_mer_zuv[index].dsSubTezu.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int indexSub) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubTezu[indexSub].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubTezu[indexSub].buteegdehuun, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubTezu[indexSub].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubTezu[indexSub].tolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                        itemBuilder: (BuildContext context, int indexSu) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubBu[indexSu].asuudalD}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubBu[indexSu].bTorol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubBu[indexSu].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubBu[indexSu].tolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                        itemBuilder: (BuildContext context, int index1su) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubGt[index1su].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubGt[index1su].gtTorol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubGt[index1su].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubGt[index1su].tolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                        itemCount: erdes_baylag_mer_zuv[index].dsSubNoots == null ? 0 : erdes_baylag_mer_zuv[index].dsSubNoots.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int indexSub) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubNoots[indexSub].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubNoots[indexSub].buteegdehuun, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubNoots[indexSub].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubNoots[indexSub].tolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                        itemCount: erdes_baylag_mer_zuv[index].dsSubUhggsa == null ? 0 : erdes_baylag_mer_zuv[index].dsSubUhggsa.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int indexSub) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubUhggsa[indexSub].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubUhggsa[indexSub].torol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubUhggsa[indexSub].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubUhggsa[indexSub].uhggsaTolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
  Widget buildList(BuildContext context, int index) {
    final tusgai = erdes_baylag_mer_zuv_all[index];

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
                          child: SvgPicture.asset('assets/uuhvy_img/new_mzuvlul.svg', height: 100,  fit: BoxFit.cover)
                      ),
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
                                  Expanded(flex: 4, child: Text(tusgai.zovlol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(flex: 4, child: Text('Он:', style: TextStyle(color: textColor, fontSize: 12),)),
                                  Expanded(flex: 4, child: Text('${tusgai.jilId}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.start,
                              //   crossAxisAlignment: CrossAxisAlignment.center,
                              //   children: <Widget>[
                              //     Expanded(flex: 4, child: Text('Хурлын дугаар:', style: TextStyle(color: textColor, fontSize: 12),)),
                              //     Expanded(flex: 4, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                              //   ],
                              // ),
                              // SizedBox(height: 4),
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
                      Text('Хэлэлцсэн асуудлууд', style: TextStyle(fontSize: 12, fontFamily: "Roboto-Condensed", color: textColor, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  children: <Widget>[
                    erdes_baylag_mer_zuv.length <= 0 ? Container() : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: erdes_baylag_mer_zuv[index].dsSubTezu == null ? 0 : erdes_baylag_mer_zuv[index].dsSubTezu.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int indexSub) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubTezu[indexSub].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubTezu[indexSub].buteegdehuun, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubTezu[indexSub].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubTezu[indexSub].tolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                        itemBuilder: (BuildContext context, int indexSu) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubBu[indexSu].asuudalD}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubBu[indexSu].bTorol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubBu[indexSu].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubBu[indexSu].tolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                        itemBuilder: (BuildContext context, int index1su) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubGt[index1su].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubGt[index1su].gtTorol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubGt[index1su].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubGt[index1su].tolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                        itemCount: erdes_baylag_mer_zuv[index].dsSubNoots == null ? 0 : erdes_baylag_mer_zuv[index].dsSubNoots.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int indexSub) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubNoots[indexSub].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubNoots[indexSub].buteegdehuun, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubNoots[indexSub].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubNoots[indexSub].tolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                        itemCount: erdes_baylag_mer_zuv[index].dsSubUhggsa == null ? 0 : erdes_baylag_mer_zuv[index].dsSubUhggsa.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int indexSub) {
                          return                     Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Асуудлын дугаар:', style: TextStyle(color: textColor, fontSize: 12))),
                                  Expanded(flex: 4, child: Text("${erdes_baylag_mer_zuv[index].dsSubUhggsa[indexSub].aDugaar}", style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 2, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubUhggsa[indexSub].torol, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Text(erdes_baylag_mer_zuv[index].dsSubUhggsa[indexSub].asuudal, style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(flex: 0, child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Text('Төлөв:', style: TextStyle(color: textColor, fontSize: 12),),
                                  ),),
                                  Expanded(flex: 4, child: Text(erdes_baylag_mer_zuv[index].dsSubUhggsa[indexSub].uhggsaTolov, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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







