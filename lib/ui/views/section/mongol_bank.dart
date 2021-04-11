import 'package:catalog/ui/components/header.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:lambda/plugins/chart/models/filter.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:lambda/plugins/chart/lambda_chart_rest.dart';

import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/common.dart';

class MongolBank extends StatefulWidget {
  @override
  _MongolBankState createState() => _MongolBankState();
}

class _MongolBankState extends State<MongolBank> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();
  bool loading = true;

  String theme = "shine";
  List<Filter> filters = [Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportNuurs = [Filter(column: "b_id", condition: "equals", value: "2")];
  List<Filter> filtersOlborloltNuurs = [Filter(column: "b_id", condition: "equals", value: "2")];
  List<Filter> filtersExportZes = [Filter(column: "b_id", condition: "equals", value: "1")];
  List<Filter> filtersOlborlolZes = [Filter(column: "b_id", condition: "equals", value: "1")];
  List<Filter> filtersExportTumur = [Filter(column: "b_id", condition: "equals", value: "3")];
  List<Filter> filtersOlborloltTumur = [Filter(column: "b_id", condition: "equals", value: "3")];
  List<Filter> filtersOlborloltGazrinTos = [Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06"), Filter(column: "b_id", condition: "equals", value: "4")];

  List<String> colorsExportNuurs = ["#3030BE", "#6363E7", "#A8A8EA"];
  List<String> colorsExportZes = ["#F87129", "#E59B73", "#FFD5BE"];
  List<String> colorsExportTumur = ["#2B97D4", "#85CCF5", "#D1E6F2"];
  List<Filter> filtersExportGazriinTos = [Filter(column: "b_id", condition: "equals", value: "4"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportNuursBoomt = [Filter(column: "b_id", condition: "equals", value: "2"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportZesBoomt = [Filter(column: "b_id", condition: "equals", value: "1"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportZesTumur = [Filter(column: "b_id", condition: "equals", value: "3"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersAlt = [
    Filter(column: "a_maltlam_id", condition: "equals", value: "11"),
    Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")
  ];
  List<Filter> filtersErdesUneAlt = [Filter(column: "ashigt_m_id", condition: "equals", value: "11")];
  List<String> colorsAltai = ["#F7C417", "#FF9B05", "#F5EAC3"];

  List<Filter> filtersExportNuursWithDate = [Filter(column: "b_id", condition: "equals", value: "2"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportZesWithDate = [Filter(column: "b_id", condition: "equals", value: "1"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportTumurWithDate = [Filter(column: "b_id", condition: "equals", value: "3"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportGazarWithDate = [Filter(column: "b_id", condition: "equals", value: "4"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersBoomNuurs = [Filter(column: "boomt_short", condition: "equals", value: "ГАС"),Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];



  List<Common$Query$LutAshigtMaltmal> datas = [];
  int selectedId = null;

  @override
  void initState() {
    super.initState();
    this.getData();
  }
  void getData() async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(CommonQuery());
    setState(() {
      datas = response.data.lutAshigtMaltmal;
      loading = false;
    });
  }
  List<Common$Query$LutAshigtMaltmal> getTuruls(){
    List<Common$Query$LutAshigtMaltmal> filtredTurul = [];
    datas.forEach((v) {
        if(v.ashigtMaltmal != null){
          filtredTurul.add(v);
        }
      });
    return filtredTurul;
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
            title: "МБ худалдан авсан үнэт метал",
            showBack: true,
            scaffold: _scaffoldKey,
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(right: 5, top: 0, left: 5, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DropdownButtonHideUnderline(
                    child: Container(
                      height: 30,
                      //width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.only(bottom: 10, left: 5, right: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromRGBO(223, 223, 223, 1), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: Colors.grey[200],
                      ),
                      child: DropdownButton(
                          items: getTuruls().map((row) => DropdownMenuItem(
                            child: Text(row.ashigtMaltmal),
                            value: row.id,
                          )).toList(),
                          onChanged: (newVal) {
                            setState(() {
                              selectedId = newVal;
                              print(selectedId);
                            });
                          },
                          value: selectedId,
                          isExpanded: false,
                          style: TextStyle(fontSize: 12, color: Colors.black),
                          hint: Text(
                            'сонгох',
                          )
                      ),
                    ),
                  ),
                    LambdaChartRest(title: "МБ худалдан авсан үнэт метал",  APIurl: "/api/mBankBuy", theme: theme, colors: colorsAltai, filters: filtersAlt, chartType: "ColumnChart"),
                ]))));
  }
}
