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
  List<Filter> filtersAlt = [Filter(column: "a_maltlam_id", condition: "equals", value: "11"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersErdesUneAlt = [Filter(column: "ashigt_m_id", condition: "equals", value: "11")];
  List<String> colorsAltai = ["#F7C417", "#FF9B05", "#F5EAC3"];

  List<Filter> filtersExportNuursWithDate = [Filter(column: "b_id", condition: "equals", value: "2"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportZesWithDate = [Filter(column: "b_id", condition: "equals", value: "1"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportTumurWithDate = [Filter(column: "b_id", condition: "equals", value: "3"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportGazarWithDate = [Filter(column: "b_id", condition: "equals", value: "4"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersBoomNuurs = [Filter(column: "boomt_short", condition: "equals", value: "ГАС"),Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];

  // void setFilter(){
  //   setState(() {
  //     filters[0].value =getDateString(preStart);
  //     filters[1].value = getDateString(preEnd);
  //     Chart1.currentState.initChart();
  //     Chart2.currentState.initChart();
  //     Chart3.currentState.initChart();
  //     Chart4.currentState.initChart();
  //   });
  // }
  void _datePicker(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        builder: (context) {
          //PickerDateRange values = new PickerDateRange(gDate(filters[0].value), gDate(filters[1].value));
          return StatefulBuilder(builder: (BuildContext context, StateSetter setStateOfBottomSheet) {
            return  Container(
              child: Column(
                children: [
                  Expanded(
                    child: SfDateRangePicker(
                      //initialSelectedRange: values,
                      //onSelectionChanged: _onSelectionChanged,
                      selectionMode: DateRangePickerSelectionMode.range,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setStateOfBottomSheet((){
                        //setFilter();
                      });
                    },
                    color: Colors.blueAccent,
                    child: Text("Сонгох", style: TextStyle(color: Colors.white),),
                    padding: EdgeInsets.all(16),
                    // shape: CircleBorder(),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            );
          });
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
            title: "Экспортын мэдээ жилээр",
            showBack: true,
            scaffold: _scaffoldKey,
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(right: 5, top: 0, left: 5, bottom: 10),
                child: Column(children: [
                  GestureDetector(
                    onTap: () { _datePicker(context); },
                    child:Container(
                      //margin: EdgeInsets.only(left:20, bottom: 0),
                        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                        margin: EdgeInsets.symmetric(horizontal: 6.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(filters[0].value, style: TextStyle(fontSize: 14),),
                                  ),
                                  Container(
                                    child: Text(" - "),
                                  ),
                                  Container(
                                    child: Text(filters[1].value, style: TextStyle(fontSize: 14),),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 0,
                                child: Icon(Icons.arrow_drop_down_outlined)
                            ),
                          ],
                        )
                    ),
                  ),
                  SizedBox(height: 10),

                  // //// 9.1 Export Nuur YEar
                  LambdaChartRest(title: "НҮҮРС", colors: colorsExportNuurs, APIurl: "/api/exportYear", theme: theme, filters: filtersExportNuurs, chartType: "ColumnChart"),


                  LambdaChartRest(title: "ЗЭСИЙН БАЯЖМАЛ", colors: colorsExportZes, APIurl: "/api/exportYear", theme: theme, filters: filtersExportZes, chartType: "ColumnChart"),


                  // //// 9.2 Export Tumur Year
                  LambdaChartRest(title: "ТӨМРИЙН ХҮДЭР", colors: colorsExportTumur, APIurl: "/api/exportYear", theme: theme, filters: filtersExportTumur, chartType: "ColumnChart"),
                  // //// 9.2 Export Zes Year

                ]))));
  }
}
