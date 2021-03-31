import 'package:catalog/ui/components/header.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:lambda/plugins/chart/models/filter.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';
import 'package:lambda/plugins/chart/lambda_chart_rest.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:catalog/ui/styles/_colors.dart';
class ExportNews extends StatefulWidget {
  @override
  _ExportNewsState createState() => _ExportNewsState();
}

class _ExportNewsState extends State<ExportNews> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String theme = "shine";
  List<Filter> filters = [Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  List<Filter> filtersExportNuurs = [Filter(column: "b_id", condition: "equals", value: "2")];
  List<Filter> filtersOlborloltNuurs = [Filter(column: "b_id", condition: "equals", value: "2")];
  List<Filter> filtersExportZes = [Filter(column: "b_id", condition: "equals", value: "1")];
  List<Filter> filtersOlborlolZes = [Filter(column: "b_id", condition: "equals", value: "1")];
  List<Filter> filtersExportTumur = [Filter(column: "b_id", condition: "equals", value: "3")];
  List<Filter> filtersOlborloltTumur = [Filter(column: "b_id", condition: "equals", value: "3")];
  List<Filter> filtersOlborloltGazrinTos = [Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01"), Filter(column: "b_id", condition: "equals", value: "4")];

  List<String> colorsExportNuurs = ["#3030BE", "#6363E7", "#A8A8EA"];
  List<String> colorsExportZes = ["#F87129", "#E59B73", "#FFD5BE"];
  List<String> colorsExportTumur = ["#2B97D4", "#85CCF5", "#D1E6F2"];
  List<Filter> filtersExportGazriinTos = [Filter(column: "b_id", condition: "equals", value: "4"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  List<Filter> filtersExportNuursBoomt = [Filter(column: "b_id", condition: "equals", value: "2"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  List<Filter> filtersExportZesBoomt = [Filter(column: "b_id", condition: "equals", value: "1"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  List<Filter> filtersExportZesTumur = [Filter(column: "b_id", condition: "equals", value: "3"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  List<Filter> filtersAlt = [Filter(column: "a_maltlam_id", condition: "equals", value: "11"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  List<Filter> filtersErdesUneAlt = [Filter(column: "ashigt_m_id", condition: "equals", value: "11")];
  List<String> colorsAltai = ["#F7C417", "#FF9B05", "#F5EAC3"];

  List<Filter> filtersExportNuursWithDate = [Filter(column: "b_id", condition: "equals", value: "2"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  List<Filter> filtersExportZesWithDate = [Filter(column: "b_id", condition: "equals", value: "1"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  List<Filter> filtersExportTumurWithDate = [Filter(column: "b_id", condition: "equals", value: "3"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  List<Filter> filtersExportGazarWithDate = [Filter(column: "b_id", condition: "equals", value: "4"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  List<Filter> filtersBoomNuurs = [Filter(column: "boomt_short", condition: "equals", value: "ГАС"),Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];


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
            title: "Экспортын мэдээ",
            showBack: true,
            scaffold: _scaffoldKey,
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(right: 5, top: 0, left: 5, bottom: 10),
                child: Column(children: [

                  // // 1 Export Medee
                  LambdaChart(schemaID: '216', theme: theme, filters: filters),


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.grey[100],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'НҮҮРС',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                              flex: 4,
                                              child: SvgPicture.asset(
                                                  'assets/uuhvy_img/auto_teever.svg',
                                                  width: 28,
                                                  fit: BoxFit.contain)),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 6.0),
                                              child: Text(
                                                '300',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: primaryColor,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                              flex: 4,
                                              child: SvgPicture.asset(
                                                  'assets/uuhvy_img/tumur_zam.svg',
                                                  width: 28,
                                                  fit: BoxFit.contain)),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 6.0),
                                              child: Text(
                                                '609.6',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: primaryColor,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Нийт',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              '909.6',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  color: primaryColor,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Өссөн дүн',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                    '24,235.1',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: primaryColor,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500),
                                                  )),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Өмнөх оноос',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                    '+23.1%',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500),
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),


                  SizedBox(height: 10),
                  // // 3 Export Nuurs by Track
                  LambdaChart(schemaID: '218', theme: theme, filters: filters),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.grey[100],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'ЗЭСИЙН БАЯЖМАЛ',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textOrange,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                              flex: 4,
                                              child: SvgPicture.asset(
                                                  'assets/uuhvy_img/auto_teever.svg',
                                                  width: 28,
                                                  fit: BoxFit.contain)),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 6.0),
                                              child: Text(
                                                '300',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textOrange,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                              flex: 4,
                                              child: SvgPicture.asset(
                                                  'assets/uuhvy_img/tumur_zam.svg',
                                                  width: 28,
                                                  fit: BoxFit.contain)),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 6.0),
                                              child: Text(
                                                '609.6',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textOrange,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Нийт',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              '909.6',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  color: textOrange,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Өссөн дүн',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                    '24,235.1',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: textOrange,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500),
                                                  )),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Өмнөх оноос',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                    '+23.1%',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500),
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),

                  SizedBox(height: 10),

                  // // 4 Export Zes by Track
                  LambdaChart(schemaID: '219', theme: theme, filters: filters),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.grey[100],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'ТӨМРИЙН ХҮДЭР',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textBlueGrey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                              flex: 4,
                                              child: SvgPicture.asset(
                                                  'assets/uuhvy_img/auto_teever.svg',
                                                  width: 28,
                                                  fit: BoxFit.contain)),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 6.0),
                                              child: Text(
                                                '300',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textBlueGrey,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                              flex: 4,
                                              child: SvgPicture.asset(
                                                  'assets/uuhvy_img/tumur_zam.svg',
                                                  width: 28,
                                                  fit: BoxFit.contain)),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 6.0),
                                              child: Text(
                                                '609.6',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textBlueGrey,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Нийт',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              '909.6',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  color: textBlueGrey,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Өссөн дүн',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                    '24,235.1',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: textBlueGrey,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500),
                                                  )),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Өмнөх оноос',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                    '+23.1%',
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w500),
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ]),
                  ),

                  SizedBox(height: 10),
                  // // 5 Export Tumur by Track
                  LambdaChart(schemaID: '220', theme: theme, filters: filters),




                ]))));
  }
}
