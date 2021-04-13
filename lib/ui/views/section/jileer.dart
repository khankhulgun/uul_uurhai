import 'package:catalog/ui/components/header.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:lambda/plugins/chart/models/filter.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';
import 'package:lambda/plugins/chart/lambda_chart_rest.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Jileer extends StatefulWidget {
  @override
  _JileerState createState() => _JileerState();
}

class _JileerState extends State<Jileer> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String theme = "shine";
   List<Filter> filtersExportNuurs = [Filter(column: "b_id", condition: "equals", value: "2")];

  List<Filter> filtersExportZes = [Filter(column: "b_id", condition: "equals", value: "1")];

  List<Filter> filtersExportTumur = [Filter(column: "b_id", condition: "equals", value: "3")];

  List<String> colorsExportNuurs = ["#3030BE", "#6363E7", "#A8A8EA"];
  List<String> colorsExportZes = ["#F87129", "#E59B73", "#FFD5BE"];
  List<String> colorsExportTumur = ["#2B97D4", "#85CCF5", "#D1E6F2"];



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
            title: "Экспортын мэдээ жилээр",
            showBack: true,
            scaffold: _scaffoldKey,
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(right: 5, top: 0, left: 5, bottom: 10),
                child: Column(children: [

                  // //// 9.1 Export Nuur YEar
                  LambdaChartRest(title: "НҮҮРС", colors: colorsExportNuurs, APIurl: "/api/exportYear", theme: theme, filters: filtersExportNuurs, chartType: "ColumnChart"),


                  LambdaChartRest(title: "ЗЭСИЙН БАЯЖМАЛ", colors: colorsExportZes, APIurl: "/api/exportYear", theme: theme, filters: filtersExportZes, chartType: "ColumnChart"),


                  // //// 9.2 Export Tumur Year
                  LambdaChartRest(title: "ТӨМРИЙН ХҮДЭР", colors: colorsExportTumur, APIurl: "/api/exportYear", theme: theme, filters: filtersExportTumur, chartType: "ColumnChart"),
                  // //// 9.2 Export Zes Year

                ]))));
  }
}
