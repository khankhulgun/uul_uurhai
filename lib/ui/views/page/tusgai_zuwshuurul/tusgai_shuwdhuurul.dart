import 'package:catalog/graphql/config.dart';
import 'package:catalog/ui/components/loader.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:catalog/utils/number.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:catalog/ui/components/header.dart';

import 'package:catalog/graphql/queries/tzAndSongon.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';
import 'package:catalog/utils/date.dart';
import 'package:catalog/ui/common/paginate.dart';
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/busad.dart';

class newTusgaiZuvshuurul extends StatefulWidget {
  @override
  _newTusgaiZuvshuurulState createState() => _newTusgaiZuvshuurulState();
}

class _newTusgaiZuvshuurulState extends State<newTusgaiZuvshuurul> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<TzAndSongon$Query$AaTusgaiZovshoorol> datas = [];
  bool loading = true;
  String theme = "shine";
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;

  List<TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorol> tusgai_zuvshuurul = [];

  @override
  void initState() {
    super.initState();
    this.getDatas();
    getData(1);
  }

  void getDatas() async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(TzAndSongonQuery());
    setState(() {
      datas = response.data.aaTusgaiZovshoorol;
      loading = false;
    });
  }

  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(TusgaiZovshoorolQuery(variables: TusgaiZovshoorolArguments(page: page, size: 10)));
    setState(() {
      tusgai_zuvshuurul = response.data.paginate.aaTusgaiZovshoorol;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;

      print(tusgai_zuvshuurul);
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
            title: "Тусгай зөвшөөрөл",
            showBack: true,
            scaffold: _scaffoldKey,
          ),
        ),
        body: Container(
          height: double.infinity,
          child:  loading ? Loader() : SingleChildScrollView(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                     margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                     decoration: BoxDecoration(
                       color: Color.fromRGBO(231, 240, 254, 1),
                       borderRadius: BorderRadius.all(Radius.circular(8.0)),
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Expanded(
                           flex: 4,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   Text('НИЙТ:', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold)),
                                   SizedBox(width: 4,),
                                   Text('', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500))
                                 ],
                               ),
                               SizedBox(height: 20,),
                               Center(child: datas.length == 0 ? Container() : Text(number(datas[0].tzToo), textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(53, 53, 137, 1), fontWeight: FontWeight.w600)))
                             ],
                           )
                         ),
                         Expanded(
                             flex: 4,
                             child: Container(
                               decoration: BoxDecoration(
                                 border: Border(
                                     left: BorderSide(color: Colors.grey[400], width: 0.5),
                                     right: BorderSide(color: Colors.grey[400], width: 0.5)
                                 ),
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [

                                   Text('Талбайн хэмжээ\n/сая.га/', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                                   SizedBox(height: 5,),
                                   datas.length == 0 ? Container() : Text('${datas[0].tHemjeeSay}', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(53, 53, 137, 1), fontWeight: FontWeight.w600))
                                 ],
                               ),
                             )
                         ),
                         Expanded(
                             flex: 4,
                             child: Column(
                               children: [

                                 Text('Нутаг дэвсгэрт\nэзлэх хувь', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                                 SizedBox(height: 5,),
                                 datas.length == 0 ? Container() : Text('${datas[0].niitGazarHuvi}'+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(53, 53, 137, 1), fontWeight: FontWeight.w600))
                               ],
                             )
                         ),
                       ],
                     ),
                   ),
                 Container(
                   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                   margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                   decoration: BoxDecoration(
                     color: Color.fromRGBO(246, 243, 243, 1),
                     borderRadius: BorderRadius.all(Radius.circular(8.0)),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Expanded(
                           flex: 4,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   Text('Ашиглалт:'.toUpperCase(), style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold)),
                                   SizedBox(width: 4,),
                                   Text('', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500))
                                 ],
                               ),
                               SizedBox(height: 20,),
                               Center(child: datas.length == 0 ? Container() : Text(number(datas[0].aTToo), textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500)))
                             ],
                           )
                       ),
                       Expanded(
                           flex: 4,
                           child: Container(
                             decoration: BoxDecoration(
                               border: Border(
                                   left: BorderSide(color: Colors.grey[400], width: 0.5),
                                   right: BorderSide(color: Colors.grey[400], width: 0.5)
                               ),
                             ),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [

                                 Text('Талбайн хэмжээ\n/сая.га/', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                                 SizedBox(height: 5,),
                                 datas.length == 0 ? Container() : Text('${datas[0].aTZovshoorol}', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500))
                               ],
                             ),
                           )
                       ),
                       Expanded(
                           flex: 4,
                           child: Column(
                             children: [

                               Text('Нутаг дэвсгэрт\nэзлэх хувь', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                               SizedBox(height: 5,),
                               datas.length == 0 ? Container() : Text('${datas[0].ashiglatTzHuvi}'+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500))
                             ],
                           )
                       ),
                     ],
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                   margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                   decoration: BoxDecoration(
                     color: Color.fromRGBO(246, 243, 243, 1),
                     borderRadius: BorderRadius.all(Radius.circular(8.0)),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Expanded(
                           flex: 4,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   Text('Хайгуул:'.toUpperCase(), style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold)),
                                   SizedBox(width: 4,),
                                   Text('', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500))
                                 ],
                               ),
                               SizedBox(height: 20,),
                               Center(child: datas.length == 0 ? Container() :Text(number(datas[0].htZovshoorol), textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500)))
                             ],
                           )
                       ),
                       Expanded(
                           flex: 4,
                           child: Container(
                             decoration: BoxDecoration(
                               border: Border(
                                   left: BorderSide(color: Colors.grey[400], width: 0.5),
                                   right: BorderSide(color: Colors.grey[400], width: 0.5)
                               ),
                             ),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Text('Талбайн хэмжээ\n/сая.га/', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                                 SizedBox(height: 5,),
                                 datas.length == 0 ? Container() : Text('${datas[0].haiguulTZ}', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500))
                               ],
                             ),
                           )
                       ),
                       Expanded(
                           flex: 4,
                           child: Column(
                             children: [
                               Text('Нутаг дэвсгэрт\nэзлэх хувь', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                               SizedBox(height: 5,),
                               datas.length == 0 ? Container() : Text('${datas[0].haiguulHuvi}'+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500))
                             ],
                           )
                       ),
                     ],
                   ),
                 ),
                 Container(
                     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                     child: Center(
                       child: LambdaChart(schemaID: '238', theme: theme),
                     )
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                   child: Row(
                       children: <Widget>[
                         Expanded(
                           flex: 0,
                           child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 0),
                             child: Text("Бүртгэлийн жагсаалт", style: TextStyle(color: mainColor, fontSize: 12, fontWeight: FontWeight.w600)),
                           ),
                         ),
                         SizedBox(width: 4,),
                         Expanded(
                           flex: 4,
                           child: Container(
                             height: 1,
                             width: MediaQuery.of(context).size.width,
                             color: mainColor,
                           ),
                         ),
                       ]
                   ),
                 ),
                 Container(
                   height: 400,
                   margin: EdgeInsets.only(top: 10),
                   child: loading ? Loader() : Pagination(
                     lastPage: lastPage,
                     currentPage: currentPage,
                     total: total,
                     loading: loading,
                     getData: getData,
                     itemBuilder:  ListView.builder(
                       itemCount: tusgai_zuvshuurul == null ? 0 : tusgai_zuvshuurul.length,
                       itemBuilder: (BuildContext context, int index) =>
                           buildTripCard(context, index),
                     ),
                   ),
                 )

               ],
             ),
          ),
        )
    );
  }

  Widget buildTripCard(BuildContext context, int index) {
    final tusgai = tusgai_zuvshuurul[index];

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius:
        BorderRadius.all(Radius.circular(6.0)),
          border: Border.all(color: Color.fromRGBO(243, 243, 243, 2), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 4, child: Text('Огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
              Expanded(flex: 4, child: Text(date(tusgai.ognoo), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 4, child: Text('Тусгай зөвшөөрөл:', style: TextStyle(color: textColor, fontSize: 12),)),
              Expanded(flex: 4, child: Text(number(tusgai.tzToo), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 4, child: Text('Талбай хэмжээ /сая.га/:', style: TextStyle(color: textColor, fontSize: 12),)),
              Expanded(flex: 4, child: Text('${tusgai.tHemjeeSay}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 4, child: Text('Нутаг дэвсгэрт эзлэх хувь:', style: TextStyle(color: textColor, fontSize: 12),)),
              Expanded(flex: 4, child: Text('${tusgai.niitGazarHuvi}'+'%', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(flex: 4, child: Text('Ашиглалт:', style: TextStyle(color: textColor, fontSize: 12),)),
                      Expanded(flex: 3, child: Text(number(tusgai.aTToo), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(flex: 4, child: Text('Талбай хэмжээ /сая.га/:', style: TextStyle(color: textColor, fontSize: 12),)),
                      Expanded(flex: 3, child: Text('${tusgai.aTZovshoorol}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(flex: 4, child: Text('Нутаг дэвсгэрт эзлэх хувь:', style: TextStyle(color: textColor, fontSize: 12),)),
                      Expanded(flex: 3, child: Text('${tusgai.ashiglatTzHuvi}'+'%', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(flex: 4, child: Text('Хайгуул:', style: TextStyle(color: textColor, fontSize: 12),)),
                      Expanded(flex: 3, child: Text(number(tusgai.htZovshoorol), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(flex: 4, child: Text('Талбай хэмжээ /сая.га/:', style: TextStyle(color: textColor, fontSize: 12),)),
                      Expanded(flex: 3, child: Text('${tusgai.haiguulTZ}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(flex: 4, child: Text('Нутаг дэвсгэрт эзлэх хувь:', style: TextStyle(color: textColor, fontSize: 12),)),
                      Expanded(flex: 3, child: Text('${tusgai.haiguulHuvi}'+'%', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                    ],
                  ),
                ],
              ),
          )
        ],
      ),
    );
  }
}
