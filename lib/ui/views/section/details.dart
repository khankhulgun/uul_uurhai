import 'package:catalog/ui/components/header.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:lambda/plugins/chart/models/filter.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';
import 'package:lambda/plugins/chart/lambda_chart_rest.dart';
class Details extends StatefulWidget {
  final String title;
  final int id;
  const Details({Key key, this.title, this.id})
      : super(key: key);

  @override
  _Detailstate createState() => _Detailstate();
}

class _Detailstate extends State<Details> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String theme = "shine";
  List<Filter> filters = [Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  List<Filter> filtersExportNuurs = [Filter(column: "b_id", condition: "equals", value: "2")];
  List<Filter> filtersOlborloltNuurs = [Filter(column: "b_id", condition: "equals", value: "2")];


  List<Filter> filtersExportTumur = [Filter(column: "b_id", condition: "equals", value: "3")];
  List<Filter> filtersOlborloltTumur = [Filter(column: "b_id", condition: "equals", value: "3")];


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

  List<Filter> filtersExportTumurWithDate = [Filter(column: "b_id", condition: "equals", value: "3"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  List<Filter> filtersExportGazarWithDate = [Filter(column: "b_id", condition: "equals", value: "4"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  List<Filter> filtersBoomNuurs = [Filter(column: "boomt_short", condition: "equals", value: "ГАС"),Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];

  @override
  Widget build(BuildContext context) {
    List<Filter> filtersExportData = [Filter(column: "b_id", condition: "equals", value: "${widget.id}")];
    List<Filter> filtersOlborlolData = [Filter(column: "b_id", condition: "equals", value: "${widget.id}")];
    List<Filter> filtersExportWithDate = [Filter(column: "b_id", condition: "equals", value: "${widget.id}"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
    List<Filter> filtersOlborloltWithData= [Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01"), Filter(column: "b_id", condition: "equals", value: "${widget.id}")];

    var colors = colorsExportZes;
    if(widget.id == 2){
      colors = colorsExportNuurs;
    }
    if(widget.id == 3){
      colors = colorsExportTumur;
    }
    if(widget.id == 4){
      colors = colorsExportTumur;
    }

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
            title: "${widget.title}",
            showBack: true,
            scaffold: _scaffoldKey,
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(right: 5, top: 0, left: 5, bottom: 10),
                child: Column(children: [

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color:  Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            border: Border.all(color: Color.fromRGBO(232, 232, 232, 1), width: 1),
                          ),
                          child:  Container(
                            padding: EdgeInsets.only(top: 76.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('2021.01.01 ~ 2021.03.31 ', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Expanded(flex: 0, child: Text('1,142.9', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600))),
                                          SizedBox(width: 4),
                                          Expanded(flex: 2, child: Text('мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Expanded(flex: 0, child: Text('Өмнөх он:', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400))),
                                          SizedBox(width: 4),
                                          Expanded(flex: 2, child: Text('1,185.1 мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('Өнгөрсөн оны мөн\nүеэс (мян.тн)', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                      SizedBox(height: 5),
                                      Text('+37.9', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('Өнгөрсөн оны мөн үеэс хувиар', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                      SizedBox(height: 5),
                                      Text('+3.3%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child:   Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color:  Color(0xFFD3E3FD),
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('2021.03.01 ~ 2021.03.06 ', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Expanded(flex: 0, child: Text('1,144.7', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600))),
                                          SizedBox(width: 4),
                                          Expanded(flex: 2, child: Text('мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Expanded(flex: 0, child: Text('Өмнөх он:', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400))),
                                          SizedBox(width: 4),
                                          Expanded(flex: 2, child: Text('1,185.1 мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('Өнгөрсөн оны мөн\nүеэс (мян.тн)', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                      SizedBox(height: 5),
                                      Text('-40.4', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('Өнгөрсөн оны мөн үеэс хувиар', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                      SizedBox(height: 5),
                                      Text('-3.4%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                  ),
                  LambdaChartRest(title: "Экпорт", colors: colors, APIurl: "/api/exportYear", theme: theme, filters: filtersExportData, chartType: "ColumnChart"),
                  // //12.2 Export zes
                  LambdaChart(schemaID: '223', theme: theme, filters: filtersExportWithDate),

                  LambdaChartRest(title: "Экпорт боомтоор",  APIurl: "/api/exportBoomt", theme: theme, filters: filtersExportWithDate, chartType: "ColumnChart"),

                  // // 13 Olborlolor zes

                  LambdaChart(schemaID: '226', theme: theme, filters: filtersOlborloltWithData),
                  LambdaChartRest(title: "Олборлолт жилээр",  APIurl: "/api/olborloltYear", theme: theme, colors: colors, filters: filtersOlborlolData, chartType: "ColumnChart"),

                  LambdaChart(schemaID: '224', theme: theme, filters: filtersExportWithDate),

                  widget.id == 2 ? LambdaChartRest(title: "Нүүрсний экспорт боомтоор",  APIurl: "/api/nuursBoomt", theme: theme, filters: filters, chartType: "ColumnChart") : Container(),
                  // //17.2 Нүүрсний экспорт боомтоор ALL
                  widget.id == 2 ? LambdaChart(schemaID: '225', theme: theme, filters: filtersBoomNuurs, hideTitle:true): Container(),


                ]))));
  }
}
