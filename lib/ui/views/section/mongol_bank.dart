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
  List<Filter> filtersAlt = [
    Filter(column: "a_maltlam_id", condition: "equals", value: "11"),
  ];

  List<String> colorsAltai = ["#F7C417", "#FF9B05", "#F5EAC3"];

  final GlobalKey<LambdaChartRestState> Chart1 = new GlobalKey<LambdaChartRestState>();

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

  void setFilter (int newVal){
    setState(() {
      filtersAlt[0].value = "${newVal}";
      selectedId = newVal;
      Chart1.currentState.initChart();
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
                             setFilter(newVal);
                          },
                          value: selectedId,
                          isExpanded: false,
                          style: TextStyle(fontSize: 12, color: Colors.black),
                          hint: Text(
                            'Алт',
                          )
                      ),
                    ),
                  ),
                    LambdaChartRest(title: "МБ худалдан авсан үнэт метал", key: Chart1,  APIurl: "/api/mBankBuy", theme: theme, colors: colorsAltai, filters: filtersAlt, chartType: "ColumnChart"),
                ]))));
  }
}
