import 'package:catalog/ui/components/header.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:lambda/plugins/chart/models/filter.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';
import 'package:lambda/plugins/chart/lambda_chart_rest.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:catalog/utils/date.dart';

class Boomt extends StatefulWidget {
  @override
  _BoomtState createState() => _BoomtState();
}

class _BoomtState extends State<Boomt> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String theme = "shine";
  List<Filter> filters = [
    Filter(column: "ognoo", condition: "greaterThanOrEqual", value: prevMonthDate()),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: today())
  ];

  DateTime preStart;
  DateTime preEnd;

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      final DateTime rangeStartDate = args.value.startDate;
      final DateTime rangeEndDate = args.value.endDate;
      if(rangeStartDate != null && rangeEndDate != null){
        setState(() {
          preStart = rangeStartDate;
          preEnd = rangeEndDate;
        });
      }
    }
  }
  final GlobalKey<LambdaChartState> Chart1 = new GlobalKey<LambdaChartState>();
  final GlobalKey<LambdaChartRestState> Chart2 = new GlobalKey<LambdaChartRestState>();
  final GlobalKey<LambdaChartRestState> Chart3 = new GlobalKey<LambdaChartRestState>();
  final GlobalKey<LambdaChartRestState> Chart4 = new GlobalKey<LambdaChartRestState>();
  void setFilter(){
    setState(() {
      filters[0].value = getDateString(preStart);
      filters[1].value = getDateString(preEnd);
      Chart1.currentState.initChart();
      Chart2.currentState.initChart();
      Chart3.currentState.initChart();
      Chart4.currentState.initChart();
    });
  }
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
          PickerDateRange values = new PickerDateRange(gDate(filters[0].value), gDate(filters[1].value));
          return StatefulBuilder(builder: (BuildContext context, StateSetter setStateOfBottomSheet) {
            return  Container(
              child: Column(
                children: [
                  Expanded(
                    child: SfDateRangePicker(
                      initialSelectedRange: values,
                      onSelectionChanged: _onSelectionChanged,
                      selectionMode: DateRangePickerSelectionMode.range,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setStateOfBottomSheet((){
                        setFilter();
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

  List<Filter> getFilter(int b_id){
    List<Filter> filtersExport = [Filter(column: "b_id", condition: "equals", value: "${b_id}")];

    filtersExport.add(filters[0]);
    filtersExport.add(filters[1]);

    return filtersExport;
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
            title: "Экспортын мэдээ боомтоор",
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

                  // //2 Export BOOMT
                  LambdaChart(schemaID: '214', key: Chart1, theme: theme, filters: filters),

                  // //// 6 Export Nuurs Boomt
                  LambdaChartRest(title: "НҮҮРС", key: Chart2, APIurl: "/api/exportBoomt", theme: theme, filters: getFilter(2), chartType: "ColumnChart"),

                  // //// 7 Export Zes Boomt
                  LambdaChartRest(title: "ЗЭСИЙН БАЯЖМАЛ", key: Chart3, APIurl: "/api/exportBoomt", theme: theme, filters: getFilter(1), chartType: "ColumnChart"),

                  // //// 8 Export Tumur Boomt
                  LambdaChartRest(title: "ТӨМРИЙН ХҮДЭР", key: Chart4, APIurl: "/api/exportBoomt", theme: theme, filters: getFilter(3), chartType: "ColumnChart"),




                ]))));
  }
}
